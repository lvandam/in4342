/*
 * Based on paper "Kernel-Based Object Tracking"
 * you can find all the formula in the paper
*/

#include "meanshift.h"
#include "arm_neon.h"
#include "Timer.h"

MeanShift::MeanShift()
{
    cfg.MaxIter = 8;
    cfg.num_bins = 16;
    cfg.piexl_range = 256;
    bin_width = cfg.piexl_range / cfg.num_bins;
}

float32x4_t vectordivide (float32x4_t value_a, float32x4_t value_b) {

	// SOURCE: https://stackoverflow.com/questions/6759897/how-to-divide-in-neon-intrinsics-by-a-float-number

	float32x4_t reciprocal = vrecpeq_f32(value_b);

	reciprocal = vmulq_f32(vrecpsq_f32(value_b, reciprocal), reciprocal);
	reciprocal = vmulq_f32(vrecpsq_f32(value_b, reciprocal), reciprocal);

	return vmulq_f32(value_a,reciprocal);
}

float32x4_t vectorsqrt (float32x4_t input) {

	//TODO should be made a bit more accurate
	//return vmulq_f32(vrsqrteq_f32(input), input); //-> more inaccurate but faster!
	float32x4_t sqrt_reciprocal = vrsqrteq_f32(input);

    float32x4_t temp = vrsqrtsq_f32(input * sqrt_reciprocal, sqrt_reciprocal) * sqrt_reciprocal;
    return input * temp;

}

void MeanShift::Init_target_frame(const cv::Mat &frame,const cv::Rect &rect)
{
    target_Region = rect;

    centre = static_cast<float>((rect.height - 1) / 2.0);

    norm_i = std::vector<float>(rect.height);
    norm_j = std::vector<float>(rect.width);
    norm_i_j = MatrixFloat(rect.height, RowFloat(rect.width));

    for(int i = 0; i < rect.height; i++)
    {
      norm_i[i] = static_cast<float>(i-centre)/centre;
      for(int j = 0; j < rect.width; j++)
      {
        norm_j[j] = static_cast<float>(j-centre)/centre;
        norm_i_j[i][j] = norm_i[i]*norm_i[i] + norm_j[j]*norm_j[j];
      }
    }

    kernel = MatrixFloat(rect.height, RowFloat(rect.width));
    Epanechnikov_kernel(kernel);

    target_model = pdf_representation_target(frame, target_Region);
}

void MeanShift::Epanechnikov_kernel(MatrixFloat &kernel)
{
    int h = kernel.size();
    int w = kernel[0].size();

    unsigned short epanechnikov_cd = 0.1 * PI * h * w;

    for(int i = 0; i < h; i++)
    {
        for(int j = 0; j < w; j++)
        {
            float x = i - h/2;
            float y = j - w/2;

            float norm_x = x*x/(h*h/4)+y*y/(w*w/4);
            float result = norm_x < 1 ? (epanechnikov_cd * (1-norm_x)) : 0;

            kernel[i][j] = result;
        }
    }
}

MatrixFloat MeanShift::pdf_representation_target(const cv::Mat &frame, const cv::Rect &rect)
{
    MatrixFloat pdf_model(3, RowFloat(16));

    cv::Vec3b curr_pixel_value;
    cv::Vec3i bin_value;

    int row_index = rect.y;
    int clo_index = rect.x;

    for(int i = 0; i < rect.height; i++)
    {
        clo_index = rect.x;
        for(int j = 0; j < rect.width; j++)
        {
            curr_pixel_value = frame.at<cv::Vec3b>(row_index, clo_index);

            bin_value[0] = curr_pixel_value[0] / bin_width;
            bin_value[1] = curr_pixel_value[1] / bin_width;
            bin_value[2] = curr_pixel_value[2] / bin_width;

            pdf_model[0][bin_value[0]] += kernel[i][j];
            pdf_model[1][bin_value[0]] += kernel[i][j];
            pdf_model[2][bin_value[0]] += kernel[i][j];

            clo_index++;
        }
        row_index++;
    }
    return pdf_model;
}

MatrixFloat MeanShift::PdfWeight()
{
  MatrixFloat pdf_model(3, RowFloat(16));

  uint8x16_t curr_pixel_value_neon, bin_value_neon;
  static uint8_t bin_array[16];

  int row_index = target_Region.y;
  int clo_index = target_Region.x;

    int rows = target_Region.height;
    int cols = target_Region.width;
      MatrixFloat weight(rows, RowFloat(cols, 1));
    int col_index = target_Region.x;
    float32_t model[16], candidate[16], result[16];
    float32x4x4_t model_neon, candidate_neon, result_neon;

    // Calculate pdf_representation
    for(int kk = 0; kk < 3; kk++)
    {
      row_index = target_Region.y;
      for(int i = 0; i < rows; i++)
      {
          clo_index = target_Region.x;
          for(int j = 0;j < cols; j += 16)
          {
              int size = cols - j < 16 ? cols - j : 16;
              curr_pixel_value_neon = vld1q_u8 ((const uint8_t*) bgr_planes[kk].ptr(row_index,clo_index));
              bin_value_neon = vshrq_n_u8(curr_pixel_value_neon, 4);
              vst1q_u8(bin_array, bin_value_neon);

              for(int k = 0; k < size; k++)
              {
                // Dividing by 30000 gives a correct results. Figure out uints!
                pdf_model[kk][bin_array[k]] += kernel[i][j + k];
              }

              clo_index += 16;
          }
          row_index++;
      }
    }

    // Calculate weight (CalWeight)
    for(int kk = 0; kk < 3; kk++)
    {
      row_index = target_Region.y;
      for(int i = 0; i < rows; i++)
      {
          col_index = target_Region.x;
          for(int j = 0; j < cols; j+=16)
          {
             // Compute bin values of 16 pixels
              int size = target_Region.width - j<16? target_Region.width -j : 16;
              curr_pixel_value_neon = vld1q_u8 ((const uint8_t*) bgr_planes[kk].ptr(row_index,col_index));
              bin_value_neon = vshrq_n_u8(curr_pixel_value_neon, 4);
              vst1q_u8(bin_array, bin_value_neon);

              // Read in 16 model values, store as 32x4x4 float
              // Read in 16 candidate values, store as 32x4x4 float
              for (int z =0;z<16;z++) {
                model[z]=target_model[kk][bin_array[z]];
                candidate[z]=pdf_model[kk][bin_array[z]];
              }

              model_neon = vld4q_f32((const float32_t *)&model);
              candidate_neon = vld4q_f32((const float32_t *)&candidate);

              // Divide model by candidate
              for (int z = 0; z < 4; z++) {
                result_neon.val[z] = vectordivide(model_neon.val[z], candidate_neon.val[z]);
              }

              // Store result in weight matrix
              vst4q_f32(result,result_neon);

              for (int g = 0; g < size; g++) {
                weight[i][j+g] *= result[g];
              }
              col_index += 16;
          }
          row_index++;
      }
    }

  return weight;
}

cv::Rect MeanShift::track(const cv::Mat &next_frame)
{
    // Timer multTimer("Mult Time");
    // Timer trackTimer("Track Time");
    // trackTimer.Start();

    cv::Rect next_rect;
    cv::split(next_frame, bgr_planes);

    for(int iter = 0; iter < cfg.MaxIter; iter++)
    {
        // Combined pdf_representation and CalWeight
        MatrixFloat weight = PdfWeight();

        float delta_x = 0.0;
        float delta_y = 0.0;
        float sum_wij = 0.0;

        next_rect.x = target_Region.x;
        next_rect.y = target_Region.y;
        next_rect.width = target_Region.width;
        next_rect.height = target_Region.height;

        // TODO: Speed this up!
        for (size_t i = 0; i < weight.size(); ++i)
        {
          for (size_t j = 0; j < weight[0].size(); ++j)
          {
            if(norm_i_j[i][j] <= 1.0)
            {
              delta_x += static_cast<float>(norm_j[j]*weight[i][j]);
              delta_y += static_cast<float>(norm_i[i]*weight[i][j]);
              sum_wij += static_cast<float>(weight[i][j]);
            }
          }
        }

        // multTimer.Pause();
        // multTimer.Print();

        next_rect.x += static_cast<int>((delta_x/sum_wij)*centre);
        next_rect.y += static_cast<int>((delta_y/sum_wij)*centre);

        if(abs(next_rect.x-target_Region.x)<15 && abs(next_rect.y-target_Region.y)<15)
        {
            break;
        }
        else
        {
            target_Region.x = next_rect.x;
            target_Region.y = next_rect.y;
        }
    }

    // trackTimer.Pause();
    // trackTimer.Print();

    return next_rect;
}
