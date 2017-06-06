/*
 * Based on paper "Kernel-Based Object Tracking"
 * you can find all the formula in the paper
*/

#include"meanshift.h"
extern "C" { 
#include "dspInter.h"
#include "dsplink.h"
}

MeanShift::MeanShift()
{
    cfg.MaxIter = 8;
    cfg.num_bins = 16;
    cfg.piexl_range = 256;
    bin_width = cfg.piexl_range / cfg.num_bins;
}

void  MeanShift::Init_target_frame(const cv::Mat &frame,const cv::Rect &rect)
{
    DSP_STATUS status = DSP_SOK ;
    target_Region = rect;
    kernel = cv::Mat(rect.height,rect.width,CV_32F,cv::Scalar(0));
    //normalized_C = 1.0 / Epanechnikov_kernel(kernel);

    Epanechnikov_kernel(kernel);
    
    //kernelWB(kernel.ptr<float>(0), 58 * 86);

    target_model = pdf_representation_target(frame,target_Region);
    
    /*std::vector<cv::Mat> bgr_planes;
    cv::split(frame, bgr_planes);
    
    //poolRectangle(rect.x, rect.y, rect.width, rect.height);
    
    Uint8* plane = (Uint8*) bgr_planes[BLUE].ptr<Uint8>(0);
    Uint8* fr = (Uint8*) frame.ptr(0,0);*/
    
    poolColor(BLUE,(Uint8*) frame.ptr(0,0));
    if(isDspReady())
    {
        setDspState(DSP_BUSY);
        dspCommand(INIT_BLUE);
        isDspDone();
    }
    
    poolColor(GREEN,(Uint8*) frame.ptr(0,0));
    if(isDspReady())
    {
        setDspState(DSP_BUSY);
        dspCommand(INIT_GREEN);
        isDspDone();
    }
    
    poolColor(RED, (Uint8*) frame.ptr(0,0));
    if(isDspReady())
    {
        setDspState(DSP_BUSY);
        dspCommand(INIT_RED);
        isDspDone();
    }
    
}

void MeanShift::Epanechnikov_kernel(cv::Mat &kernel)
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
            float y = static_cast<float> (j - w/2);
            float norm_x = x*x/(h*h/4)+y*y/(w*w/4);
            float result =norm_x<1?(epanechnikov_cd*(1.0-norm_x)):0;
            kernel.at<float>(i,j) = result;
        }
    }
    
    //return kernel_sum;
}

cv::Mat MeanShift::pdf_representation_target(const cv::Mat &frame, const cv::Rect &rect)
{
    cv::Mat pdf_model(3, 16, CV_32SC1, cv::Scalar(0.1));

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

    uchar curr_pixel_value;
    float bin_value;

    int row_index = rect.y;
    int clo_index = rect.x;

    for(int i = 0; i < rect.height;i++)
    {
        clo_index = rect.x;
        for(int j=0;j<rect.width;j++)
        {
            curr_pixel_value = frameLayer.at<uchar>(row_index,clo_index);
            bin_value = curr_pixel_value / bin_width;

            pdf_model.at<float>(0, bin_value) += kernel.at<float>(i,j);
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

    DSP_STATUS status = DSP_SOK ;
    /*std::vector<cv::Mat> bgr_planes;
    cv::split(next_frame, bgr_planes);
    
    Uint8* plane = (Uint8*) bgr_planes[BLUE].ptr<Uint8>(0);
    Uint8* fr = (Uint8*) next_frame.ptr(0,0);
    
    
    for(int i=0; i<640*480 ; i++)
    {
        if(plane[i] != fr[3*i])
        {
            printf("first fault for blue at position %d\n", i);
            break;
        }
    }
    
    plane = (Uint8*) bgr_planes[GREEN].ptr<Uint8>(0);
    
    for(int i=0; i<640*480 ; i++)
    {
        if(plane[i] != fr[3*i + 1])
        {
            printf("first fault for green at position %d\n", i);
            break;
        }
    }
    
    printf("first fault for green at position %d\n", 1);
    
    plane = (Uint8*) bgr_planes[RED].ptr<Uint8>(0);
    
    for(int i=0; i<640*480 ; i++)
    {
        if(plane[i] != fr[3*i + 2])
        {
            printf("first fault for green at position %d\n", i);
            break;
        }
    }*/
    
    //std::cout<< (int) next_frame.ptr<Uint8>(0) <<"\t" << (int) bgr_planes[BLUE].ptr<Uint8>(0) <<std::endl;;

    for(int iter=0;iter<cfg.MaxIter;iter++)
    //for(int iter=0;iter<1;iter++)
    {
        poolRectangle(target_Region.x, target_Region.y, target_Region.width, target_Region.height);
        
        //std::cout<< target_Region.x << "\t" << target_Region.y << "\t" << target_Region.width << "\t" << target_Region.height << std::endl;
        
        //poolColor((Uint8*) next_frame.ptr<Uint8>(0));
        if(isDspReady())
        {
            poolColor(BLUE, (Uint8*) next_frame.ptr(0,0));
            setDspState(DSP_BUSY);
            dspCommand(WEIGHT_BLUE);
            isDspDone();
        }
        //cv::Mat target_candidate0 = pdf_representation(bgr_planes[0], target_Region);        
        //cv::Mat weight0 = CalWeight(bgr_planes[0], 0, target_model, target_candidate0, target_Region);
        //cv::Mat weight0(target_Region.height, target_Region.width, CV_32F, (void*) pointToResult());
        /*for(int i=0;i<target_Region.height;i++)
        {
            for(int j=0; j<target_Region.width; j++)
            {
                std::cout<< weight0.at<float>(i,j) << "\t";
            }
            std::cout << std::endl;
        }
        std::cout << std::endl;
        std::cout << std::endl;
        
        if(isDspReady()) status = dspComExec () ;
        else printf("DSP not ready");*/

        //cv::Mat target_candidate1 = pdf_representation(bgr_planes[1], target_Region);
        //cv::Mat weight1 = CalWeight(bgr_planes[1], 1, target_model, target_candidate1, target_Region);
        
        /*for(int i=0;i<target_Region.height;i++)
        {
            for(int j=0; j<target_Region.width; j++)
            {
                std::cout<< weight1.at<float>(i,j) << "\t";
            }
            std::cout << std::endl;
        }
        std::cout << std::endl;
        std::cout << std::endl;*/

        poolColor(GREEN, (Uint8*) next_frame.ptr(0,0));
        dspCommand(WEIGHT_GREEN);
        /*if(isDspReady())
        {
            setDspState(DSP_BUSY);
            dspCommand(WEIGHT_GREEN);
            isDspDone();
        }*/
        
        //cv::Mat weight1(target_Region.height, target_Region.width, CV_32F, (void*) pointToResult());
        
        /*if(isDspReady()) status = dspComExec () ;
        else printf("DSP not ready");*/

        /*cv::Mat target_candidate2 = pdf_representation(bgr_planes[2], target_Region);
        cv::Mat weight2 = CalWeight(bgr_planes[2], 2, target_model, target_candidate2, target_Region);*/
        
        /*for(int i=0;i<target_Region.height;i++)
        {
            for(int j=0; j<target_Region.width; j++)
            {
                std::cout<< weight2.at<float>(i,j) << "\t";
            }
            std::cout << std::endl;
        }
        std::cout << std::endl;
        std::cout << std::endl;*/
        isDspDone();
        poolColor(RED,(Uint8*) next_frame.ptr(0,0));
        dspCommand(WEIGHT_RED);
        /*if(isDspReady())
        {
            setDspState(DSP_BUSY);
            dspCommand(WEIGHT_RED);
        }*/
        
        isDspDone();
        //cv::Mat weight2(target_Region.height, target_Region.width, CV_32F, (void*) pointToResult());
        cv::Mat weight(target_Region.height, target_Region.width, CV_32F, (void*) pointToResult());
        
        /*if(isDspReady()) status = dspComExec () ;
        else printf("DSP not ready");*/
        
        //std::cout << std::endl;

        // Merge back intermediate results
        //cv::Mat weight = weight0.mul(weight1.mul(weight2));

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
