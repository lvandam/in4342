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

void MeanShift::Init_target_frame(const cv::Mat &frame,const cv::Rect &rect)
{
    target_Region = rect;

    centre = static_cast<float>((rect.height - 1) / 2.0);

    norm_i = std::vector<float>(rect.height);
    norm_j = std::vector<float>(rect.width);
    norm_i_j = Matrix(rect.height, Row(rect.width));
    // for(int i = 0; i < rect.height; i++)
    //   norm_i[i] = static_cast<float>(i-centre)/centre;
    // for(int j = 0; j < rect.width; j++)
    //   norm_j[j] = static_cast<float>(j-centre)/centre;

    for(int i = 0; i < rect.height; i++)
    {
      norm_i[i] = static_cast<float>(i-centre)/centre;
      for(int j = 0; j < rect.width; j++)
      {
        norm_j[j] = static_cast<float>(j-centre)/centre;
        norm_i_j[i][j] = norm_i[i]*norm_i[i] + norm_j[j]*norm_j[j];
      }
    }

    kernel = Matrix(rect.height, Row(rect.width));
    Epanechnikov_kernel(kernel);

    target_model = pdf_representation_target(frame, target_Region);
}

void MeanShift::Epanechnikov_kernel(Matrix &kernel)
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

            unsigned short norm_x = (25*h*h*w*w/4) / (h*h*w*w/4 - x*x*w*w - y*y*h*h); // Float -> int by multiplying with a factor 5
            unsigned short result = norm_x > 25 ? (epanechnikov_cd / norm_x) : 0;

            kernel[i][j] = result;
        }
    }
}

Matrix MeanShift::pdf_representation_target(const cv::Mat &frame, const cv::Rect &rect)
{
    Matrix pdf_model(3, Row(16));

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

Matrix MeanShift::pdf_representation(cv::Mat &frameLayer, const cv::Rect &rect)
{
    Matrix pdf_model(1, Row(16));

    uint8x16_t curr_pixel_value_neon, bin_value_neon;
    static uint8_t bin_array[16];

    int row_index = rect.y;
    int clo_index = rect.x;

    for(int i = 0; i < rect.height;i++)
    {
        clo_index = rect.x;
        for(int j=0;j<rect.width;j+=16)
        {
            int size = rect.width - j<16? rect.width -j : 16;
            curr_pixel_value_neon = vld1q_u8 ((const uint8_t*) frameLayer.ptr(row_index,clo_index));
            bin_value_neon = vshrq_n_u8(curr_pixel_value_neon, 4);
            vst1q_u8(bin_array, bin_value_neon);

            for(int k = 0; k < size; k++)
            {
              // Dividing by 30000 gives a correct results. Figure out uints!
              pdf_model[0][bin_array[k]] += kernel[i][j + k];
            }
            clo_index += 16;
        }
        row_index++;
    }

    return pdf_model;
}

MatrixFloat MeanShift::CalWeight(cv::Mat &frameLayer, int k, Matrix &target_model,
                    Matrix &target_candidate, cv::Rect &rec)
{
    int rows = rec.height;
    int cols = rec.width;
    int row_index = rec.y;
    int col_index = rec.x;
    uint8x16_t curr_pixel_value_neon, bin_value_neon;
    static uint8_t bin_array[16];

    MatrixFloat weight(rows, RowFloat(cols));

    row_index = rec.y;
    for(int i = 0; i < rows; i++)
    {
        col_index = rec.x;
        for(int j = 0; j < cols; j+=16)
        {
            int size = rec.width - j<16? rec.width -j : 16;
            curr_pixel_value_neon = vld1q_u8 ((const uint8_t*) frameLayer.ptr(row_index,col_index));
            bin_value_neon = vshrq_n_u8(curr_pixel_value_neon, 4);
            vst1q_u8(bin_array, bin_value_neon);

            for(int g = 0; g < size; g++)
            {
              // weight values example: 0.841341 0.841341 0.841341 0.841341 0.841341 0.841341 0.846652 0.782825 0.782825 0.846652 0.846652 0.841341 0.939198 0.939198 0.841341 0.841341
              if(target_candidate[0][bin_array[g]] != 0)
              {
                weight[i][j+g] = static_cast<unsigned short>((sqrt((target_model[k][bin_array[g]]*500)/target_candidate[0][bin_array[g]])));
              }
            }

            col_index += 16;
        }
        row_index++;
    }

    return weight;
}

cv::Rect MeanShift::track(const cv::Mat &next_frame)
{
    // Timer multTimer("Mult Time");
    // Timer trackTimer("Track Time");
    // trackTimer.Start();

    Timer totTimer("Total timer");
    Timer pdfcalTimer("3xpdf_representation + 3xCalweight timer");
    Timer bodyTimer("For loop body timer");
    Timer afterbodyTimer("After for loop timer");

    cv::Rect next_rect;

    std::vector<cv::Mat> bgr_planes;
    cv::split(next_frame, bgr_planes);

    for(int iter = 0; iter < cfg.MaxIter; iter++)
    {
        totTimer.Start();
        pdfcalTimer.Start();
        Matrix target_candidate0 = pdf_representation(bgr_planes[0], target_Region);
        MatrixFloat weight = CalWeight(bgr_planes[0], 0, target_model, target_candidate0, target_Region);
        // std::cout << weight << std::endl;

        Matrix target_candidate1 = pdf_representation(bgr_planes[1], target_Region);
        MatrixFloat weight1 = CalWeight(bgr_planes[1], 1, target_model, target_candidate1, target_Region);

        Matrix target_candidate2 = pdf_representation(bgr_planes[2], target_Region);
        MatrixFloat weight2 = CalWeight(bgr_planes[2], 2, target_model, target_candidate2, target_Region);

        pdfcalTimer.Stop();
        pdfcalTimer.Print();
        bodyTimer.Start();

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
        // float32_t test;
        sum_wij_temp = vmovq_n_f32(0.000000001);
        delta_x_temp = vmovq_n_f32(0.000000001);
        delta_y_temp = vmovq_n_f32(0.000000001);
        // curr_pixel_value_neon = vld1q_u8 ((const uint8_t*) frameLayer.ptr(row_index,clo_index));
        // bin_value_neon = vshrq_n_u8(curr_pixel_value_neon, 4);

        for(size_t i = 0; i < weight.size(); i++)
        {
            for(size_t j = 0; j < weight[0].size(); j+=4)
            {
                // int size = weight[0].size() - j<4? weight[0].size() -j : 4;
                if(norm_i_j[i][j] <= 1.0)
                {
                  weight[i][j] = weight[i][j] * weight1[i][j] * weight2[i][j];

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
        bodyTimer.Stop();
        bodyTimer.Print();

        afterbodyTimer.Start();
        // printf("Old delta_x: %f\n ",delta_x);
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

        // exit(EXIT_FAILURE);
        next_rect.x += static_cast<int>((delta_x/sum_wij)*centre);
        next_rect.y += static_cast<int>((delta_y/sum_wij)*centre);

        if(abs(next_rect.x-target_Region.x)<1 && abs(next_rect.y-target_Region.y)<1)
        {
            break;
        }
        else
        {
            target_Region.x = next_rect.x;
            target_Region.y = next_rect.y;
        }
        afterbodyTimer.Stop();
        afterbodyTimer.Print();
    }

    // trackTimer.Pause();
    // trackTimer.Print();

    return next_rect;
}




// // PDF_REPRESENTATION WITHOUT NEON
// cv::Mat MeanShift::pdf_representation(cv::Mat &frameLayer, const cv::Rect &rect)
// {
//     //cv::Mat pdf_model(1, 16, CV_32F, cv::Scalar(1e-10)); // FLOAT
//     cv::Mat pdf_model(1, 16, CV_16UC2, cv::Scalar(0)); // INT // CV_32SC1
//
//     uchar curr_pixel_value;
//     int bin_value;
//
//     int row_index = rect.y;
//     int clo_index = rect.x;
//
//     for(int i = 0; i < rect.height;i++)
//     {
//         clo_index = rect.x;
//         for(int j = 0; j < rect.width; j++)
//         {
//             curr_pixel_value = frameLayer.at<uchar>(row_index,clo_index);
//             bin_value = curr_pixel_value / bin_width;
//
//             pdf_model.at<uint>(0, bin_value) += kernel.at<unsigned short>(i,j);
//             clo_index++;
//         }
//         row_index++;
//     }
//
//     return pdf_model;
// }

// // CALWEIGHT WITHOUT NEON
// cv::Mat MeanShift::CalWeight(cv::Mat &frameLayer, int k, cv::Mat &target_model,
//                     cv::Mat &target_candidate, cv::Rect &rec)
// {
//     int rows = rec.height;
//     int cols = rec.width;
//     int row_index = rec.y;
//     int col_index = rec.x;
//
//     // cv::Mat weight(rows, cols, CV_32F, cv::Scalar(1.0000)); // float
//     cv::Mat weight(rows, cols, CV_16UC2, cv::Scalar(1)); // int
//
//     row_index = rec.y;
//     for(int i = 0; i < rows; i++)
//     {
//         col_index = rec.x;
//         for(int j = 0; j < cols; j++)
//         {
//             int curr_pixel = frameLayer.at<uchar>(row_index, col_index);
//             int bin_value = curr_pixel / bin_width;
//
//             if(target_candidate.at<uint>(0, bin_value) != 0) // Added: so that weights won't become 0 by uninitialized pdf_model values
//               // weight.at<float>(i,j) *= static_cast<float>((sqrt(target_model.at<float>(k, bin_value)/target_candidate.at<float>(0, bin_value)))); // float
//               weight.at<uint>(i,j) *= static_cast<uint>((sqrt(target_model.at<uint>(k, bin_value) / target_candidate.at<uint>(0, bin_value)))); // int
//
//             col_index++;
//         }
//         row_index++;
//     }
//
//     return weight;
// }
