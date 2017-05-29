#ifndef MEANSHIFT_H
#define MEANSHIFT_H
#include <iostream>
#include <math.h>
#include <ctime>
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"

#define PI 3.1415926
class MeanShift
{
 private:
    float bin_width;
    cv::Mat target_model;
    cv::Rect target_Region;
    cv::Mat kernel;
    float normalized_C;

    struct config{
        int num_bins;
        int piexl_range;
        int MaxIter;
    }cfg;

public:
    MeanShift();
    void Init_target_frame(const cv::Mat &frame,const cv::Rect &rect);
    void Epanechnikov_kernel(cv::Mat &kernel);
    cv::Mat pdf_representation_target(const cv::Mat &frame,const cv::Rect &rect);
    cv::Mat pdf_representation(cv::Mat &frameLayer,const cv::Rect &rect);
    cv::Mat CalWeight(cv::Mat &frameLayer, int k, cv::Mat &target_model, cv::Mat &target_candidate, cv::Rect &rec);
    cv::Mat CalWeight_opt(const cv::Mat &frame, cv::Mat &target_model, cv::Mat &target_candidate, cv::Rect &rec);
    cv::Rect track(const cv::Mat &next_frame);
};

#endif // MEANSHIFT_H
