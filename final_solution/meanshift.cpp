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

float sqrt3(const float x)
{
	// Source: https://www.codeproject.com/Articles/69941/Best-Square-Root-Method-Algorithm-Function-Precisi
  union
  {
    int i;
    float x;
  } u;

  u.x = x;
  u.i = (1<<29) + (u.i >> 1) - (1<<22);
  return u.x;
}

MatrixFloat MeanShift::PdfWeight(const cv::Mat &next_frame)
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
  cv::Vec3b pixel;
  row_index = target_Region.y;
  clo_index = target_Region.x;
  for(int j = 0; j < cols; j += 16)
  {
      row_index = target_Region.y;
      for(int i = 0; i < rows; i++)
      {
        // pixel = next_frame.at<cv::Vec3b>(row_index, clo_index);
        for(int kk = 0; kk < 3; kk++)
        {
          // printf("%d\n", pixel[2]);

          int size = cols - j < 16 ? cols - j : 16;
          curr_pixel_value_neon = vld1q_u8 ((const uint8_t*) (next_frame.ptr(row_index,clo_index)+kk));//next_frame.ptr(row_index,clo_index,kk));//bgr_planes[kk].ptr(row_index,clo_index));
          bin_value_neon = vshrq_n_u8(curr_pixel_value_neon, 4);
          vst1q_u8(bin_array, bin_value_neon);

          for(int k = 0; k < size; k++)
          {
            // Dividing by 30000 gives a correct results. Figure out uints!
            pdf_model[kk][bin_array[k]] += kernel[i][j + k];
          }
        }
        row_index++;
      }
      clo_index += 16;
  }

  // Calculate weight (CalWeight)
  col_index = target_Region.x;
  for(int j = 0; j < cols; j+=16)
  {
      row_index = target_Region.y;
      for(int i = 0; i < rows; i++)
      {
        for(int kk = 0; kk < 3; kk++)
        {
          // Compute bin values of 16 pixels
          // printf("%d\n", pixel[kk]);
          int size = target_Region.width - j<16? target_Region.width -j : 16;
          curr_pixel_value_neon = vld1q_u8 ((const uint8_t*) (next_frame.ptr(row_index,col_index)+kk));//next_frame.ptr(row_index,col_index,kk));//bgr_planes[kk].ptr(row_index,col_index))
          bin_value_neon = vshrq_n_u8(curr_pixel_value_neon, 4);
          vst1q_u8(bin_array, bin_value_neon);

          // Read in 16 model values, store as 32x4x4 float
          // Read in 16 candidate values, store as 32x4x4 float
          for (int z =0;z<16;z++) {
            int index = bin_array[z];
            model[z]=target_model[kk][index];
            candidate[z]=pdf_model[kk][index];
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
            weight[i][j+g] *= sqrt3(result[g]);
          }
        }
        row_index++;
      }
      col_index += 16;
  }

  return weight;
}

cv::Rect MeanShift::track(const cv::Mat &next_frame)
{
    // Timer multTimer("Mult Time");
    // Timer trackTimer("Track Time");
    // trackTimer.Start();

    cv::Rect next_rect;
    // cv::split(next_frame, bgr_planes);

    for(int iter = 0; iter < cfg.MaxIter; iter++)
    {
        // Combined pdf_representation and CalWeight
        MatrixFloat weight = PdfWeight(next_frame);

        float32_t delta_x = 0.0;
        float32_t delta_y = 0.0;
        float32_t sum_wij = 0.0;

        next_rect.x = target_Region.x;
        next_rect.y = target_Region.y;
        next_rect.width = target_Region.width;
        next_rect.height = target_Region.height;


        float32x4_t norm_i_neon, norm_j_neon, weight_neon, delta_x_temp, delta_y_temp, sum_wij_temp;
        float32x2_t delta_x_sumtemp1, delta_y_sumtemp1, sum_wij_temp1;
        float32x2_t delta_x_sumtemp2, delta_y_sumtemp2, sum_wij_temp2;

        sum_wij_temp = vmovq_n_f32(0.000000001);
        delta_x_temp = vmovq_n_f32(0.000000001);
        delta_y_temp = vmovq_n_f32(0.000000001);

        for(size_t j = 0; j < weight[0].size(); j+=4)
        {
            for(size_t i = 0; i < weight.size(); i++)
            {
                if(norm_i_j[i][j] <= 1.0)
                {
                  norm_j_neon = vld1q_f32 ((const float32_t *)&norm_j[j]);
                  norm_i_neon = vld1q_f32 ((const float32_t *)&norm_i[i]);
                  weight_neon = vld1q_f32 ((const float32_t *)&weight[i][j]);

                  //delta_x_temp = vmulq_f32(norm_j_neon,weight_neon);
                  delta_x_temp = vmlaq_f32(delta_x_temp, norm_j_neon, weight_neon);
                  delta_y_temp = vmlaq_f32(delta_y_temp, norm_i_neon, weight_neon);
                  sum_wij_temp = vaddq_f32(sum_wij_temp, weight_neon);
                }
            }
        }

        // vadd adds two 32x2 values together. vget_high and low get 32x2 high/low values from a 32x4 value.
        delta_x_sumtemp1 = vadd_f32(vget_high_f32(delta_x_temp), vget_low_f32(delta_x_temp));
        // Add these values to one another in a pairwise manner.
        delta_x_sumtemp2 = vpadd_f32(delta_x_sumtemp1, delta_x_sumtemp1);

        vst1_lane_f32(&delta_x, delta_x_sumtemp2,0);

        delta_y_sumtemp1 = vadd_f32(vget_high_f32(delta_y_temp), vget_low_f32(delta_y_temp));
        delta_y_sumtemp2 = vpadd_f32(delta_y_sumtemp1, delta_y_sumtemp1);
        vst1_lane_f32(&delta_y, delta_y_sumtemp2,0);

        sum_wij_temp1 = vadd_f32(vget_high_f32(sum_wij_temp), vget_low_f32(sum_wij_temp));
        sum_wij_temp2 = vpadd_f32(sum_wij_temp1, sum_wij_temp1);
        vst1_lane_f32(&sum_wij, sum_wij_temp2,0);

        next_rect.x += static_cast<int>((delta_x/sum_wij)*centre);
        next_rect.y += static_cast<int>((delta_y/sum_wij)*centre);

        if(abs(next_rect.x-target_Region.x)<10 && abs(next_rect.y-target_Region.y)<10)
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
