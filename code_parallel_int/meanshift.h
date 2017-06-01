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
void init_matrix(Matrix &matrix, int width, int height);

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
    Matrix target_model;
    cv::Rect target_Region;
    Matrix kernel;
    float normalized_C;

    struct config{
        int num_bins;
        int piexl_range;
        int MaxIter;
    }cfg;

public:
    MeanShift();
    void Init_target_frame(const cv::Mat &frame,const cv::Rect &rect);
    void Epanechnikov_kernel(Matrix &kernel);
    Matrix pdf_representation_target(const cv::Mat &frame,const cv::Rect &rect);
    Matrix pdf_representation(cv::Mat &frameLayer,const cv::Rect &rect);
    Matrix CalWeight(cv::Mat &frameLayer, int k, Matrix &target_model, Matrix &target_candidate, cv::Rect &rec);
    cv::Rect track(const cv::Mat &next_frame);
};

#endif // MEANSHIFT_H
