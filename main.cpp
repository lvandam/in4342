#include "meanshift.h"
#include "Timer.h"
#include <iostream>

#ifndef ARMCC
#include "markers.h"
#endif

extern "C" { 
#include "dspInter.h"
#include "dsplink.h"
}

/*  ----------------------------------- DSP/BIOS Link                 */

int main(int argc, char ** argv)
{
    Timer totalTimer("Total Time");
    Timer initTimer("Initialization Time");
    Char8 * dspExecutable = NULL ;
    DSP_STATUS status = DSP_SOK ;

    cv::VideoCapture frame_capture;
    
    if(argc<3)
    {
        std::cout <<"specifiy an input video file to track" << std::endl;
        std::cout <<"Usage:  ./" << argv[0] << " car.avi" << std::endl;
        return -1;
    }
    else
    {
        dspExecutable = argv [1] ;
        frame_capture = cv::VideoCapture( argv[2] );
    }

    if ( dspExecutable != NULL) 
	{ 
    
        status = dspComInit (dspExecutable, 0) ;
    }
    else 
	{
        status = DSP_EINVALIDARG ;
        printf ("ERROR! Invalid arguments specified for  "
                         "pool_notify application\n") ;
    }
    
    // this is used for testing the car video
    // instead of selection of object of interest using mouse
    cv::Rect rect(228,367,86,58);
    cv::Mat frame;
    frame_capture.read(frame);
    
    /*Uint8 *tempb;
    Uint8 *tempg;
    Uint8 *tempr;
    std::vector<cv::Mat> bgr_planes;
    cv::split(frame, bgr_planes);
    
    
    tempb = bgr_planes[0].ptr<Uint8>(0);
    tempg = bgr_planes[1].ptr<Uint8>(0);
    tempr = bgr_planes[2].ptr<Uint8>(0);
    
    for (int i = 100; i<110; i++) if(bgr_planes[0].isContinuous()) std::cout << (int) tempb[2560 + i] << (int) tempg[2560 + i] << (int) tempr[2560 + i] << std::endl;
    
    poolColor(tempb);*/
    /*if (DSP_SUCCEEDED (status)) 
    {
        if(isDspReady()) status = dspComExec () ;
        else printf("DSP not ready");
    }*/
    
    MeanShift ms; // creat meanshift obj
    initTimer.Start();
    ms.Init_target_frame(frame,rect); // init the meanshift
    initTimer.Pause();

    int codec = CV_FOURCC('F', 'L', 'V', '1');
    cv::VideoWriter writer("tracking_result.avi", codec, 20, cv::Size(frame.cols,frame.rows));

    totalTimer.Start();
    #ifndef ARMCC
    MCPROF_START();
    #endif
    int TotalFrames = 32;
    int fcount;
    //for(fcount=0; fcount<1; ++fcount)
    for(fcount=0; fcount<TotalFrames; ++fcount)
    {
        // read a frame
        int status = frame_capture.read(frame);
        if( 0 == status ) break;

        // track object
        #ifndef ARMCC
        // MCPROF_START();
        #endif
        cv::Rect ms_rect =  ms.track(frame);
        #ifndef ARMCC
        // MCPROF_STOP();
        #endif
        
        // mark the tracked object in frame
        cv::rectangle(frame,ms_rect,cv::Scalar(0,0,255),3);

        // write the frame
        writer << frame;
    }
    dspCommand(STOP_DSP);
    #ifndef ARMCC
    MCPROF_STOP();
    #endif
    totalTimer.Pause();
    dspComTerminate () ;

    initTimer.Print();
    totalTimer.Print();

    std::cout << "Processed " << fcount << " frames" << std::endl;
    std::cout << "Time: " << totalTimer.GetTime() <<" sec\nFPS : " << fcount/totalTimer.GetTime() << std::endl;

    return 0;
}

