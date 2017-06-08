#ifndef MEANSHIFT_H
#define MEANSHIFT_H
#include <iostream>
#include <math.h>
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
using namespace std;


typedef vector< vector<unsigned short> > Matrix;
typedef vector<unsigned short> Row;

typedef vector< vector<float> > MatrixFloat;
typedef vector<float> RowFloat;

template<typename T>
ostream& operator<< (ostream& out, const vector<T>& v) {
    out << "[";
    size_t last = v.size() - 1;
    for(size_t i = 0; i < v.size(); ++i) {
        out << v[i];
        if (i != last)
            out << ", ";
    }
    out << "]" << endl;
    return out;
}

#define PI 3.1415926
class MeanShift
{
 private:
    float bin_width;
    MatrixFloat target_model;
    cv::Rect target_Region;
    MatrixFloat kernel;
    std::vector<float> norm_i;
    std::vector<float> norm_j;
    MatrixFloat norm_i_j;
    float centre;
    std::vector<cv::Mat> bgr_planes;
    MatrixFloat PdfWeight(const cv::Mat &next_frame);


    struct config{
        int num_bins;
        int piexl_range;
        int MaxIter;
    }cfg;

public:
    MeanShift();
    void Init_target_frame(const cv::Mat &frame,const cv::Rect &rect);
    void Epanechnikov_kernel(MatrixFloat &kernel);
    MatrixFloat pdf_representation_target(const cv::Mat &frame,const cv::Rect &rect);
    // MatrixFloat pdf_representation(int k);
    // MatrixFloat CalWeight(int k, MatrixFloat &target_candidate);
    MatrixFloat pdf_representation();
    MatrixFloat CalWeight(MatrixFloat &target_candidate);
    cv::Rect track(const cv::Mat &next_frame);
};

#endif // MEANSHIFT_H
