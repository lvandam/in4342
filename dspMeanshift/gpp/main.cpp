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

//#define DET_TIMING

void checkError(int x_pos [32], int y_pos [32]) {

	int x_ref [32] = { 226, 216 , 205 , 205 , 205 , 193 , 177 , 177 , 160 , 157 , 153 , 153 , 151 , 150 , 155 , 155 , 159 , 163 , 168 , 174 , 197 , 208 , 226 , 226 , 242 , 247 , 260 , 260 , 277 , 285 , 297 , 297};
	int y_ref [32] = { 367, 362 , 357 , 357 , 354 , 348 , 337 , 337 , 319 , 315 , 305 , 304 , 290 , 284 , 271 , 271 , 259 , 254 , 247 , 240 , 228 , 224 , 218 , 218 , 214 , 212 , 205 , 205 , 194 , 187 , 173 , 172 };

	int x_error = 0, y_error = 0;

	for (int i = 0; i < 32; i++) {
		x_error += abs(x_ref[i] - x_pos[i]);
		y_error += abs(y_ref[i] - y_pos[i]);
	}

	float x_avgerr  = (float) x_error / 32.0;
	float y_avgerr  = (float) y_error / 32.0;

	printf("X Error (avg nr of pxls) = %.3f, Y Error (avg nr of pxls) = %.3f \n", x_avgerr, y_avgerr);

	// Not sure if this is needed too...
	printf("X Error (prcnt of width) = %.3f, Y Error (prcnt of height) = %.3f \n", 100.0*x_avgerr/86.0, 100.0*y_avgerr/58.0);

}


int main(int argc, char ** argv)
{
    Timer totalTimer("Total Time");
    #ifdef DET_TIMING
    Timer initTimer("Initialization Time");
    #endif
    Char8 * dspExecutable = NULL ;
    DSP_STATUS status = DSP_SOK ;

    cv::VideoCapture frame_capture;

    if(argc<3)
    {
        std::cout <<"specifiy an input video file to track" << std::endl;
        std::cout <<"Usage:  ./" << argv[0] << "DSP '.out' file" << " video '.avi' file" << std::endl;
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
        printf ("ERROR! Invalid arguments specified\n") ;
    }

    // this is used for testing the car video
    // instead of selection of object of interest using mouse
    cv::Rect rect(228,367,86,58);
    cv::Mat frame;
    frame_capture.read(frame);

    MeanShift ms; // creat meanshift obj
    #ifdef DET_TIMING
    initTimer.Start();
    #endif
    ms.Init_target_frame(frame,rect); // init the meanshift
    #ifdef DET_TIMING
    initTimer.Pause();
    #endif

    int codec = CV_FOURCC('F', 'L', 'V', '1');
    cv::VideoWriter writer("tracking_result.avi", codec, 20, cv::Size(frame.cols,frame.rows));


		// If you want to check error of the code compared to original
		// uncomment line below
		int x_pos[32], y_pos[32];


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
        MCPROF_START();
        #endif
        cv::Rect ms_rect =  ms.track(frame);
        #ifndef ARMCC
        MCPROF_STOP();
        #endif

				// If you want to check error of code compared to original
				// uncomment lines below
        x_pos[fcount] = ms_rect.x;
        y_pos[fcount] = ms_rect.y;

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

    #ifdef DET_TIMING
    initTimer.Print();
    #endif
    totalTimer.Print();


		// If you want to check error of code compared to original
		// uncomment line below
		checkError(x_pos,y_pos);

    std::cout << "Processed " << fcount << " frames" << std::endl;
    std::cout << "Time: " << totalTimer.GetTime() <<" sec\nFPS : " << fcount/totalTimer.GetTime() << std::endl;

    return 0;
}
