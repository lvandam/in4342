/*
 * Based on paper "Kernel-Based Object Tracking"
 * you can find all the formula in the paper
*/

#include "meanshift.h"
#include "arm_neon.h"
#include "Timer.h"

Timer initTargetFrame("Init target frame");
Timer epanechnikovKernel("epanechnikov kernel");
Timer pdfRepresentationTarget("pdf representation target");
Timer pdfRepresentation("pdf representation");
Timer calWeight("calweight");
Timer trackTimer("track");
Timer trackBody("track body");


double timeValues [32];
int n = 0;

MeanShift::MeanShift()
{
    cfg.MaxIter = 8;
    cfg.num_bins = 16;
    cfg.piexl_range = 256;
    bin_width = cfg.piexl_range / cfg.num_bins;
}


void MeanShift::Init_target_frame(const cv::Mat &frame,const cv::Rect &rect)
{

	//initTargetFrame.Start();
    target_Region = rect;

    centre = static_cast<float>((rect.height - 1) / 2.0);

    norm_i = std::vector<float>(rect.height);
    norm_j = std::vector<float>(rect.width);
    norm_i_j = MatrixFloat(rect.height, RowFloat(rect.width));

    for(int i = 0; i < rect.height; i++)
    {
      norm_i[i] = static_cast<float>(i-centre)/centre;
      for(int j = 0; j < rect.width; j++)
      {
        norm_j[j] = static_cast<float>(j-centre)/centre;
        norm_i_j[i][j] = norm_i[i]*norm_i[i] + norm_j[j]*norm_j[j];
      }
    }

    kernel = MatrixFloat(rect.height, RowFloat(rect.width));
    Epanechnikov_kernel(kernel);

    target_model = pdf_representation_target(frame, target_Region);
    //initTargetFrame.Stop();
    //initTargetFrame.Print();
}

void MeanShift::Epanechnikov_kernel(MatrixFloat &kernel)
{
	//epanechnikovKernel.Start();
    int h = kernel.size();
    int w = kernel[0].size();

    unsigned short epanechnikov_cd = 0.1 * PI * h * w;

    for(int i = 0; i < h; i++)
    {
        for(int j = 0; j < w; j++)
        {
            float x = i - h/2;
            float y = j - w/2;

            float norm_x = x*x/(h*h/4)+y*y/(w*w/4);
            float result = norm_x < 1 ? (epanechnikov_cd * (1-norm_x)) : 0;

            kernel[i][j] = result;
        }
    }
    //epanechnikovKernel.Stop();
    //epanechnikovKernel.Print();
}

MatrixFloat MeanShift::pdf_representation_target(const cv::Mat &frame, const cv::Rect &rect)
{
	//pdfRepresentationTarget.Start();
	
    MatrixFloat pdf_model(3, RowFloat(16));

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
            pdf_model[1][bin_value[1]] += kernel[i][j];
            pdf_model[2][bin_value[2]] += kernel[i][j];

            clo_index++;
        }
        row_index++;
    }
    //pdfRepresentationTarget.Stop();
    //pdfRepresentationTarget.Print();
    return pdf_model;
}

inline float sqrt3(const float x)
{
	// Source: https://www.codeproject.com/Articles/69941/Best-Square-Root-Method-Algorithm-Function-Precisi
  union
  {
    int i;
    float x;
  } u;

  u.x = x;
  u.i = (1<<29) + (u.i >> 1) - (1<<22);

  return u.x;
}

float sqrt1(const float x)  
 {
 	// Source: https://www.codeproject.com/Articles/69941/Best-Square-Root-Method-Algorithm-Function-Precisi
   union
   {
     int i;
     float x;
   } u;
   u.x = x;
   u.i = (1<<29) + (u.i >> 1) - (1<<22); 
    
   u.x =       u.x + x/u.x;
   u.x = 0.25f*u.x + x/u.x;
 
   return u.x;
}



// This is InvSqrt, fast inverse sqrt algorithm
float sqrt2a(float x){
	// source: https://betterexplained.com/articles/understanding-quakes-fast-inverse-square-root/
	float input = x;
    float xhalf = 0.5f * x;
    int i = *(int*)&x;            // store floating-point bits in integer
    i = 0x5f3759df - (i >> 1);    // initial guess for Newton's method
    x = *(float*)&i;              // convert new bits into float
    x = x*(1.5f - xhalf*x*x);     // One round of Newton's method
    return x * input;
}

float sqrt2b(float x){
	// source: https://betterexplained.com/articles/understanding-quakes-fast-inverse-square-root/
	float input = x;
    float xhalf = 0.5f * x;
    int i = *(int*)&x;            // store floating-point bits in integer
    i = 0x5f3759df - (i >> 1);    // initial guess for Newton's method
    x = *(float*)&i;              // convert new bits into float
    //x = x*(1.5f - xhalf*x*x);     // One round of Newton's method
    return x * input;
}


MatrixFloat MeanShift::PdfWeight(const cv::Mat &next_frame)
{

	//pdfRepresentation.Start();
	int rows = target_Region.height;
	int cols = target_Region.width;
  
	// Calculate pdf_representation
    MatrixFloat pdf_model(3, RowFloat(16));

    cv::Vec3b curr_pixel_value;
    cv::Vec3i bin_value;

    int row_index = target_Region.y;
    int col_index = target_Region.x;

    for(int i = 0; i < rows; i++)
    {
        col_index = target_Region.x;
        for(int j = 0; j < cols; j++)
        {
            curr_pixel_value = next_frame.at<cv::Vec3b>(row_index, col_index);

            bin_value[0] = curr_pixel_value[0] / bin_width;
            bin_value[1] = curr_pixel_value[1] / bin_width;
            bin_value[2] = curr_pixel_value[2] / bin_width;

            pdf_model[0][bin_value[0]] += kernel[i][j];
            pdf_model[1][bin_value[1]] += kernel[i][j];
            pdf_model[2][bin_value[2]] += kernel[i][j];

            col_index++;
        }
        row_index++;
    }
	/*pdfRepresentation.Stop();
	if (n<32) {
		timeValues [n] = pdfRepresentation.GetTime();
		n++;
	}*/
  
	//calWeight.Start();
	// Calculate weight (CalWeight)
  	MatrixFloat weight(rows, RowFloat(cols, 1));


	col_index = target_Region.x;
	for(int j = 0; j < cols; j++)
	{
		row_index = target_Region.y;
		for(int i = 0; i < rows; i++)
		{
		
      	    for(int k = 0; k < 3;  k++)
   			{
    
                int curr_pixel = next_frame.at<cv::Vec3b>(row_index, col_index)[k];
                int bin_val = curr_pixel/bin_width;
                                
               	weight[i][j] *= sqrt3((float)target_model[k][bin_val]/(float)pdf_model[k][bin_val]);

            }
            row_index++;
        }
        col_index++;
    }

	/*calWeight.Stop();
	if (n<32) {
		timeValues [n] = calWeight.GetTime();
		n++;
	}*/

	return weight;
}

cv::Rect MeanShift::track(const cv::Mat &next_frame)
{
    
    //trackTimer.Start();
	
    cv::Rect next_rect;
    // cv::split(next_frame, bgr_planes);

    for(int iter = 0; iter < cfg.MaxIter; iter++)
    {
        // Combined pdf_representation and CalWeight
        MatrixFloat weight = PdfWeight(next_frame);
		
		//trackBody.Start();
        next_rect.x = target_Region.x;
        next_rect.y = target_Region.y;
        next_rect.width = target_Region.width;
        next_rect.height = target_Region.height;
        
        double mult = 0.0;
        float delta_x = 0.0;
        float sum_wij = 0.0;
        float delta_y = 0.0;
		
		for(size_t i = 0; i < weight.size(); i++)
		{
        	for(size_t j = 0; j < weight[0].size(); j++)
        	{

					mult = norm_i_j[i][j]>1.0?0.0:1.0;
                	delta_x += static_cast<float>(norm_j[j]*weight[i][j]*mult);
                	delta_y += static_cast<float>(norm_i[i]*weight[i][j]*mult);
                	sum_wij += static_cast<float>(weight[i][j]*mult);
            }
        }

        next_rect.x += static_cast<int>((delta_x/sum_wij)*centre);
        next_rect.y += static_cast<int>((delta_y/sum_wij)*centre);

        if(abs(next_rect.x-target_Region.x)<1 && abs(next_rect.y-target_Region.y)<1)
        {	
        	/*trackBody.Stop();
			if (n<32) {
				timeValues [n] = trackBody.GetTime();
				n++;
			}*/
            break;
        }
        else
        {
            target_Region.x = next_rect.x;
            target_Region.y = next_rect.y;
        }
        
    }

    /*trackTimer.Stop();
	if (n<32) {
		timeValues [n] = trackTimer.GetTime();
		n++;
	}*/
	

	// Just print it all the time, doesn't matter for the time you 
	// are measuring in this way
	
	/*double sum = 0.0;
	for (int i = 0; i<n; i++) {
		sum += timeValues[i]*1000.0;
	}	
	printf("values in msec: %f \n",sum/(float)n);*/
	
    return next_rect;
}
