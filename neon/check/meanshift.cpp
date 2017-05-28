/*
 * Based on paper "Kernel-Based Object Tracking"
 * you can find all the formula in the paper
*/

#include"meanshift.h"
#include"arm_neon.h"
#include <bitset>


MeanShift::MeanShift()
{
    cfg.MaxIter = 8;
    cfg.num_bins = 16;
    cfg.piexl_range = 256;
    bin_width = cfg.piexl_range / cfg.num_bins;
}

void  MeanShift::Init_target_frame(const cv::Mat &frame,const cv::Rect &rect)
{
    target_Region = rect;
    kernel = cv::Mat(rect.height,rect.width,CV_32F,cv::Scalar(0));
    //normalized_C = 1.0 / Epanechnikov_kernel(kernel);

    Epanechnikov_kernel(kernel);

    target_model = pdf_representation_target(frame,target_Region);
}

void  MeanShift::Epanechnikov_kernel(cv::Mat &kernel)
{
    int h = kernel.rows;
    int w = kernel.cols;

    float epanechnikov_cd = 0.1*PI*h*w;
    //float kernel_sum = 0.0;
    for(int i=0;i<h;i++)
    {
        for(int j=0;j<w;j++)
        {
            float x = static_cast<float>(i - h/2);
            float  y = static_cast<float> (j - w/2);
            float norm_x = x*x/(h*h/4)+y*y/(w*w/4);
            float result =norm_x<1?(epanechnikov_cd*(1.0-norm_x)):0;
            kernel.at<float>(i,j) = result;
            //kernel_sum += result;
        }
    }
    //return kernel_sum;
}

cv::Mat MeanShift::pdf_representation_target(const cv::Mat &frame, const cv::Rect &rect)
{
    cv::Mat pdf_model(3, 16, CV_32SC1, cv::Scalar(1e-10));

    cv::Vec3f curr_pixel_value;
    cv::Vec3f bin_value;

    int row_index = rect.y;
    int clo_index = rect.x;

    for(int i=0;i<rect.height;i++)
    {
        clo_index = rect.x;
        for(int j=0;j<rect.width;j++)
        {
            curr_pixel_value = frame.at<cv::Vec3b>(row_index,clo_index);
            bin_value[0] = (curr_pixel_value[0]/bin_width);
            bin_value[1] = (curr_pixel_value[1]/bin_width);
            bin_value[2] = (curr_pixel_value[2]/bin_width);
            pdf_model.at<float>(0,bin_value[0]) += kernel.at<float>(i,j);
            pdf_model.at<float>(1,bin_value[1]) += kernel.at<float>(i,j);
            pdf_model.at<float>(2,bin_value[2]) += kernel.at<float>(i,j);

            clo_index++;
        }
        row_index++;
    }


    return pdf_model;
}

cv::Mat MeanShift::pdf_representation(cv::Mat &frameLayer, const cv::Rect &rect)
{
    cv::Mat pdf_model(1, 16, CV_32F, cv::Scalar(1e-10));

    uint8x8_t curr_pixel_value_neon, bin_value_neon;
    uint16x8_t pdf_model_neon;
    static uint8_t binarray[16];

    uchar curr_pixel_value;
    float bin_value;

    int row_index = rect.y;
    int clo_index = rect.x;

    for(int i = 0; i < rect.height;i++)
    {
        clo_index = rect.x;
        for(int j=0;j<rect.width;j++)
        {
            // Preventing j from going out of bounds. Sadly both rows and cols are not multiples of 4.
            int size = rect.width - j<8? rect.width -j : 8;

            curr_pixel_value = frameLayer.at<uchar>(row_index,clo_index);
            curr_pixel_value_neon = vld1_u8 (&(frameLayer.at<uchar>(row_index,clo_index)));
            //printf("Curr_pixel_value: %d\n", curr_pixel_value);
            // if (bin_width != 16)
            // {
            //   printf("bin_width is not 16 but: %f\n. Program not optimized for this yet \n.", bin_width);
            // }
            //
            // std::bitset<8> x(curr_pixel_value);
            // std::cout << "bitset = " << x << "\n";
            bin_value_neon = vrshr_n_u8(curr_pixel_value_neon, 4);

            // Printing result
            static uint8_t test[8];
            vst1_u8(test,curr_pixel_value_neon);
            printf("Pixel values: %u %u %u %u %u\n",test[0],test[1],test[2],test[3], test[7]);

            vst1_u8(binarray, bin_value_neon);
            printf("Binarray: %u %u %u %u %u \n",binarray[0],binarray[1],binarray[2],binarray[3], binarray[7]);

            bin_value = curr_pixel_value / bin_width;
            printf("%f \n",bin_value);

            // pdf_model_neon = vld1q_u8(&(pdf_model.at<uchar>(0, bin_value)));
            // kernel_neon = vld1q_u8(&(kernel.at<uchar>(i,j)));
            //
            // pdf_model_neon += kernel_neon;

            // for(int k = 0; k < size; k++)
            // {
            // pdfmodel[z] = pdf_model.at<uint>(0, bin_array[k]);
            //
            // }
          // pdf_model.at<float>(0, bin_array[k]) += kernel.at<float>(i,j);
          if (j>3)
          {
            exit(EXIT_FAILURE);
          }
            clo_index++;

        }
        row_index++;
    }

    return pdf_model;
}

cv::Mat MeanShift::CalWeight(cv::Mat &frameLayer, int k, cv::Mat &target_model,
                    cv::Mat &target_candidate, cv::Rect &rec)
{
    int rows = rec.height;
    int cols = rec.width;
    int row_index = rec.y;
    int col_index = rec.x;

    cv::Mat weight(rows, cols, CV_32F, cv::Scalar(1.0000));

    row_index = rec.y;
    for(int i=0;i<rows;i++)
    {
        col_index = rec.x;
        for(int j=0;j<cols;j++)
        {
            int curr_pixel = (frameLayer.at<uchar>(row_index,col_index));
            int bin_value = curr_pixel/bin_width;
            weight.at<float>(i,j) *= static_cast<float>((sqrt(target_model.at<float>(k, bin_value)/target_candidate.at<float>(0, bin_value))));
            col_index++;
        }
        row_index++;
    }

    return weight;
}

cv::Rect MeanShift::track(const cv::Mat &next_frame)
{
    cv::Rect next_rect;

    std::vector<cv::Mat> bgr_planes;
    cv::split(next_frame, bgr_planes);

    for(int iter=0;iter<cfg.MaxIter;iter++)
    {
        cv::Mat target_candidate0 = pdf_representation(bgr_planes[0], target_Region);
        cv::Mat weight0 = CalWeight(bgr_planes[0], 0, target_model, target_candidate0, target_Region);

        cv::Mat target_candidate1 = pdf_representation(bgr_planes[1], target_Region);
        cv::Mat weight1 = CalWeight(bgr_planes[1], 1, target_model, target_candidate1, target_Region);

        cv::Mat target_candidate2 = pdf_representation(bgr_planes[2], target_Region);
        cv::Mat weight2 = CalWeight(bgr_planes[2], 2, target_model, target_candidate2, target_Region);

        // Merge back intermediate results
        cv::Mat weight = weight0.mul(weight1.mul(weight2));

        float delta_x = 0.0;
        float sum_wij = 0.0;
        float delta_y = 0.0;
        float centre = static_cast<float>((weight.rows-1)/2.0);
        double mult = 0.0;

        next_rect.x = target_Region.x;
        next_rect.y = target_Region.y;
        next_rect.width = target_Region.width;
        next_rect.height = target_Region.height;

        for(int i=0;i<weight.rows;i++)
        {
            for(int j=0;j<weight.cols;j++)
            {
                float norm_i = static_cast<float>(i-centre)/centre;
                float norm_j = static_cast<float>(j-centre)/centre;
                mult = pow(norm_i,2)+pow(norm_j,2)>1.0?0.0:1.0;
                delta_x += static_cast<float>(norm_j*weight.at<float>(i,j)*mult);
                delta_y += static_cast<float>(norm_i*weight.at<float>(i,j)*mult);
                sum_wij += static_cast<float>(weight.at<float>(i,j)*mult);
            }
        }

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
    }

    return next_rect;
}
