/*
 * Based on paper "Kernel-Based Object Tracking"
 * you can find all the formula in the paper
*/

#include"meanshift.h"
#include"arm_neon.h"

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
            kernel.at<float>(i,j) = result/300;
            //kernel_sum += result;
        }
    }

    //return kernel_sum;
    //
    // printf("%f\n", kernel.at<float>(30,30));
    //
    // printf("%f\n", kernel.at<float>(30,40));
    //
    //  printf("%d\n", kernel.at<uint>(30,30));
    // std::cout << kernel.at<float>(30,40);
    // printf("Ik geloof het niet.");
    // printf("gekkkk.");
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

            // Useful prints. Bitset, curr_pixel_valueand bin_value.
            // std::bitset<8> x(curr_pixel_value);
            // std::cout << "bitset = " << x << "\n";
            // static uint8_t test[16];
            // vst1q_u8(test,curr_pixel_value_neon);
            // printf("Pixel values: ");
            // for(int k = 0; k<size; k++){
            //   printf("%u ",test[k]); // Hier komen waardes uit als 157, 158, 149, 147, etc.
            // }
            // printf("\nbin_array: ");
            // for(int k = 0; k<size; k++){
            //   printf("%u ",bin_array[k]); // Hier komen waardes uit als 9,9,9,10,9.
            // }
            // printf("\n");
            // Note: You can also add an if j > 2 EXIT_FAILURE

            for(int k = 0; k < size; k++)
            {
              // Dividing by 30000 gives a correct results. Figure out uints!
            pdf_model.at<float>(0, bin_array[k]) += kernel.at<float>(i,j+k);
            }
             clo_index+=16;
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
  //  uint8x16_t curr_pixel_value_neon2, bin_value_neon2;
    //static uint8_t bin_array2[16];

    cv::Mat weight(rows, cols, CV_32F, cv::Scalar(1.0000));

    row_index = rec.y;
    for(int i=0;i<rows;i++)
    {
        col_index = rec.x;
        // for(int j=0;j<cols;j++)
        // {
        //     int size2 = rec.width - j<16? rec.width -j : 16;
        //     curr_pixel_value_neon2 = vld1q_u8 ((const uint8_t*) frameLayer.ptr(row_index,col_index));
        //     bin_value_neon2 = vshrq_n_u8(curr_pixel_value_neon2, 4);
        //     vst1q_u8(bin_array2, bin_value_neon2);
        //
        //     for(int k = 0; k < size2; k++)
        //     {
        //     weight.at<float>(i,j) *= static_cast<float>((sqrt(target_model.at<float>(k, bin_array2[k])/target_candidate.at<float>(0, bin_array2[k]))));
        //     }
        //     col_index+=16;
        // }
        // Old implementation
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
