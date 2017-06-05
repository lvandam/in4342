#include "meanshift.h"
#include "Timer.h"
#include <iostream>
#include <numeric>

#ifndef ARMCC
#include "markers.h"
#endif

// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!
// READ ME: COMMENT ALL OTHER TIMERS WHEN TIMING KERNEL TIME!!!!!!!

int main(int argc, char ** argv)
{
    Timer totalTimer("Total Time");
    Timer kernelTimer("Kernel Time");
    std::vector<float> kernelTimes;

    cv::VideoCapture frame_capture;
    if(argc<2)
    {
        std::cout <<"specifiy an input video file to track" << std::endl;
        std::cout <<"Usage:  ./" << argv[0] << " car.avi" << std::endl;
        return -1;
    }
    else
    {
        frame_capture = cv::VideoCapture( argv[1] );
    }

    // this is used for testing the car video
    // instead of selection of object of interest using mouse
    cv::Rect rect(228,367,86,58);
    cv::Mat frame;
    frame_capture.read(frame);

    MeanShift ms; // creat meanshift obj
    ms.Init_target_frame(frame,rect); // init the meanshift

    int codec = CV_FOURCC('F', 'L', 'V', '1');
    cv::VideoWriter writer("tracking_result.avi", codec, 20, cv::Size(frame.cols,frame.rows));

    totalTimer.Start();
    #ifndef ARMCC
    MCPROF_START();
    #endif
    int TotalFrames = 32;
    int fcount;
    for(fcount=0; fcount<TotalFrames; ++fcount)
    {
        // read a frame
        int status = frame_capture.read(frame);
        if( 0 == status ) break;

        // track object
        #ifndef ARMCC
        // MCPROF_START();
        #endif
        kernelTimer.Start();
        cv::Rect ms_rect =  ms.track(frame);
        kernelTimer.Stop();
        kernelTimes.push_back(kernelTimer.GetTime()*1000.0);
        #ifndef ARMCC
        // MCPROF_STOP();
        #endif

        // mark the tracked object in frame
        cv::rectangle(frame,ms_rect,cv::Scalar(0,0,255),3);

        // write the frame
        writer << frame;
    }

    float averageKernel = std::accumulate( kernelTimes.begin(), kernelTimes.end(), 0.0)/kernelTimes.size();
    float sumKernel = std::accumulate( kernelTimes.begin(), kernelTimes.end(), 0.0);
    std::cout << "Average kernel time: " << averageKernel << " msec" << std::endl;
    std::cout << "Total kernel time: " << sumKernel << " msec" << std::endl;

    #ifndef ARMCC
    MCPROF_STOP();
    #endif
    totalTimer.Pause();

    totalTimer.Print();

    std::cout << "Processed " << fcount << " frames" << std::endl;
    std::cout << "Time: " << totalTimer.GetTime() <<" sec\nFPS : " << fcount/totalTimer.GetTime() << std::endl;

    return 0;
}
