/*
 * Based on paper "Kernel-Based Object Tracking"
 * you can find all the formula in the paper
*/

#include"meanshift.h"
#include"arm_neon.h"
#include <stdio.h>

MeanShift::MeanShift()
{
    cfg.MaxIter = 8;
    cfg.num_bins = 16;
    cfg.piexl_range = 256;
    bin_width = cfg.piexl_range / cfg.num_bins;
}

/*float sqrt1(const float x)  
{
  union
  {
    int i;
    float x;
  } u;
  u.x = x;
  u.i = (1<<29) + (u.i >> 1) - (1<<22); 
  
  // Two Babylonian Steps (simplified from:)

  // u.x = 0.5f * (u.x + x/u.x);

  // u.x = 0.5f * (u.x + x/u.x);

  u.x =       u.x + x/u.x;
  u.x = 0.25f*u.x + x/u.x;

  return u.x;
}*/  

// QUESTION FOR TA: IS THERE NO WAY OF DOING DIVISION WITH INTS IN NEON..?
inline void vectordivide (int32x4_t *divided_value, int32x4_t value_a, int32x4_t value_b) {
	// Source : http://stackoverflow.com/questions/6759897/how-to-divide-in-neon-intrinsics-by-a-float-number
	float32x4_t b = vcvtq_f32_s32(value_b);
	float32x4_t reciprocal = vrecpeq_f32(b);
	
	// Initial estimate of 1/b 	
	//float32x4_t reciprocal = vrecpeq_f32(value_b);
		
	reciprocal = vmulq_f32(vrecpsq_f32(b, reciprocal), reciprocal);
	reciprocal = vmulq_f32(vrecpsq_f32(b, reciprocal), reciprocal);
	
	float32x4_t output = vmulq_f32(vcvtq_f32_s32(value_a),reciprocal);
	//*divided_value = vmulq_f32(value_a,reciprocal);
	*divided_value = vcvtq_s32_f32(output);
}

inline void vectordivide_float (float32x4_t *divided_value, float32x4_t value_a, float32x4_t value_b) {
	// Source : http://stackoverflow.com/questions/6759897/how-to-divide-in-neon-intrinsics-by-a-float-number

	// Initial estimate of 1/b 	
	float32x4_t reciprocal = vrecpeq_f32(value_b);
		
	reciprocal = vmulq_f32(vrecpsq_f32(value_b, reciprocal), reciprocal);
	reciprocal = vmulq_f32(vrecpsq_f32(value_b, reciprocal), reciprocal);
	
	*divided_value = vmulq_f32(value_a,reciprocal);
	
}

inline void vectorsqrt (float32x4_t *output, float32x4_t input) {

	//TODO should be made a bit more accurate
	*output = vmulq_f32(vrsqrteq_f32(input), input);
	
}

void printfloat (float32x4_t value, char name[]) 
{
	static float32_t test[4];
	vst1q_f32 (test, value);	
	printf("%s: %f, %f, %f, %f. \n",name,test[0],test[1],test[2],test[3]);
}

void printint (int32x4_t value, char name []) 
{
	static int32_t test[4];
	vst1q_s32 (test, value);	
	printf("%s: %d, %d, %d, %d. \n",name,test[0],test[1],test[2],test[3]);
}

void print3reg (int8x16x3_t value, char name []) 
{
	static int32_t test[48];
	vst1q_s8(test, value.val[0]);	
	printf("%s red: %d, %d, %d, %d. \n",name,test[0],test[1],test[2],test[3]);
	vst1q_s8(test, value.val[1]);
	printf("%s green: %d, %d, %d, %d. \n",name,test[0],test[1],test[2],test[3]);
	vst1q_s8(test, value.val[2]);
	printf("%s blue: %d, %d, %d, %d. \n",name,test[0],test[1],test[2],test[3]);

}

void  MeanShift::Init_target_frame(const cv::Mat &frame,const cv::Rect &rect)
{
    target_Region = rect;
    target_model = pdf_representation(frame,target_Region);
}

float  MeanShift::Epanechnikov_kernel(cv::Mat &kernel)
{
    int h = kernel.rows;
    int w = kernel.cols;

    float epanechnikov_cd = 0.1*PI*h*w;
    float kernel_sum = 0.0;
    for(int i=0;i<h;i++)
    {
        for(int j=0;j<w;j++)
        {
            float x = static_cast<float>(i - h/2);
            float  y = static_cast<float> (j - w/2);
            float norm_x = x*x/(h*h/4)+y*y/(w*w/4);
            float result =norm_x<1?(epanechnikov_cd*(1.0-norm_x)):0;
            kernel.at<float>(i,j) = result;
            kernel_sum += result;
        }
    }
    return kernel_sum;
}
cv::Mat MeanShift::pdf_representation(const cv::Mat &frame, const cv::Rect &rect)
{
    cv::Mat kernel(rect.height,rect.width,CV_32F,cv::Scalar(0));
    float normalized_C = 1.0 / Epanechnikov_kernel(kernel);

    cv::Mat pdf_model(8,16,CV_32F,cv::Scalar(1e-10));

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
            pdf_model.at<float>(0,bin_value[0]) += kernel.at<float>(i,j)*normalized_C;
            pdf_model.at<float>(1,bin_value[1]) += kernel.at<float>(i,j)*normalized_C;
            pdf_model.at<float>(2,bin_value[2]) += kernel.at<float>(i,j)*normalized_C;
            clo_index++;
        }
        row_index++;
    }

    return pdf_model;

}

cv::Mat MeanShift::CalWeight(const cv::Mat &frame, cv::Mat &target_model, 
                    cv::Mat &target_candidate, cv::Rect &rec)
{
    int rows = rec.height;
    int cols = rec.width;
    int row_index = rec.y;
    int col_index = rec.x;

    cv::Mat weight(rows,cols,CV_32F,cv::Scalar(1.0000));
    std::vector<cv::Mat> bgr_planes;
    cv::split(frame, bgr_planes);

    /*for(int k = 0; k < 3;  k++)
    {
        row_index = rec.y;
        for(int i=0;i<rows;i++)
        {
            col_index = rec.x;
            for(int j=0;j<cols;j++)
            {
                int curr_pixel = (bgr_planes[k].at<uchar>(row_index,col_index));
                int bin_value = curr_pixel/bin_width;
                weight.at<float>(i,j) *= static_cast<float>((sqrt(target_model.at<float>(k, bin_value)/target_candidate.at<float>(k, bin_value))));
                col_index++;
            }
            row_index++;
        }
    }*/
    
    int z;
    for(int k = 0; k < 3;  k++)
    {
        row_index = rec.y;
        for(int i=0;i<rows;i++)
        {
            col_index = rec.x;
            for(int j=0;j<cols;j+=16)
            {
            	
            	// now for 32 bit, but if other types turn out to be possible,
            	// try smaller!!
            	// Pixel values are  - 255 right?
                
                // If reciprocal possible with ints, 
                // jsut use a pointer to the matrix of pixels,
                // that should speed it up a lot!!
                // For now this way, since errors otherwise
                
                // Check if j value will not run out of bounds,
                // if so, set size to cols -j 
                int size = cols - j<16? cols -j : 16;
                //printf("size: %d \n",size);
                
		            // TODO  sometimes the sqrt or weight function results in nan, how to solve this
		            
		            // Get values of the next four pixels
		            /*int32_t curr_pixel [size];
		            for (z=0;z<size;z++) {
		            	curr_pixel[z]=bgr_planes[k].at<uchar>(row_index,col_index+z);
		            }*/
		            
		        int8x16x3_t curr_pixel_vec;

		        curr_pixel_vec = vld3q_s8 (&(bgr_planes.at<int>(row_index,col_index)));
	            print3reg(curr_pixel_vec,"Current pixel value");
	            	
				// Load the bin width into all four lanes of a register
				int8x16_t bin_width_vec = vmovq_n_s8(bin_width);

	 							
	 			// Divide pixel values by bin width
	 			int8x16x3_t bin_value_vec; 
				vectordivide(&bin_value_vec.val[0], curr_pixel_vec.val[0], bin_width_vec);
				vectordivide(&bin_value_vec.val[1], curr_pixel_vec.val[1], bin_width_vec);
				vectordivide(&bin_value_vec.val[2], curr_pixel_vec.val[2], bin_width_vec);
				
				print3reg(bin_value_vec,"bin_value_vec");
	 			
	 			// Store bin values 
	 			int8_t bin_value_r [size];
	 			int8_t bin_value_g [size];
	 			int8_t bin_value_b [size];
	 					
	 			vst1q_s8 (bin_value_r,bin_value_vec.val[0]);
	 			vst1q_s8 (bin_value_g,bin_value_vec.val[1]);
	 			vst1q_s8 (bin_value_b,bin_value_vec.val[2]);
	 				
	 			
	 			// Load target model and candidate
						
	 			float32_t model[size];
		        for (z=0;z<size;z++) {
					model[z]=target_model.at<float>(k, bin_value_r[z]);
				}	
	 					
	 				float32_t candidate[size];
		            for (z=0;z<size;z++) {
						candidate[z]=target_candidate.at<float>(k, bin_value[z]);
					}	
					
					float32x4_t model_vec, candidate_vec;				
					model_vec = vld1q_f32 (model);
					candidate_vec = vld1q_f32 (candidate);			
					//printfloat(model_vec,"model vec");
					//printfloat(candidate_vec,"candidate vec");
					
					// Divide model by candidate
					float32x4_t division_vec;
					vectordivide_float(&division_vec,model_vec,candidate_vec);
					//printfloat(division_vec,"division_vec");
					
					// Compute square root of the division of model and candidate
					// TODO teller en noemer hoeven niet allebei gesquared te worden, target model is constant
					float32x4_t root_vec;
					vectorsqrt(&root_vec,division_vec);
					//printfloat(root_vec,"root_vec");
					
					// Load in weight data
					float32_t weight_data[size];
		            for (z=0;z<size;z++) {
						weight_data[z]=weight.at<float>(i,j+z);
					}
					
					//printf("load in weight_data: ");
					//for (z=0;z<4;z++){
					//	printf(" %f ",weight_data[z]);
					//}
					//printf("\n");
				
					float32x4_t weight_vec;				
					weight_vec = vld1q_f32 (weight_data);			
					//printfloat(weight_vec,"weight_vec");
					
					// Multiply the weight by the square root computed earlier
					weight_vec = vmulq_f32 (weight_vec,root_vec);
				
					//printfloat(weight_vec,"weight_vec result");
					
					// Store the new weight back
					vst1q_f32(weight_data, weight_vec);
				    //printf("weight stored: ");
					//for (z=0;z<4;z++){
					//	printf(" %f ",weight_data[z]);
					//}
					//printf("\n");
					for (z=0;z<size;z++){
						weight.at<float>(i,j+z) = weight_data[z];
					}
					col_index+=4;
				
            }
            row_index++;
        }
    }

    return weight;
}

cv::Rect MeanShift::track(const cv::Mat &next_frame)
{
    cv::Rect next_rect;
    for(int iter=0;iter<cfg.MaxIter;iter++)
    {
        cv::Mat target_candidate = pdf_representation(next_frame,target_Region);
        cv::Mat weight = CalWeight(next_frame,target_model,target_candidate,target_Region);

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
