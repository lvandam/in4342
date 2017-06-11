#include <dspMeanshift.h>

#define PI  3.14159               
#define ROWLEN 640                //Frame Dimensions
#define COLLEN 480

#define INITRECTHEIGHT  58      //Initial Rectangle Dimensions
#define INITRECTWIDTH   86
#define INITRECTX      228
#define INITRECTY      367


Uint16 binWidth = 16;           //Bin width and cfgMaxIter have been defined here as they do not change
Uint16 cfgMaxIter = 8;
_iq11 epanechnikovSum=0;        //For EpanechnikovSum IQ11 was selected because it is the first IQ value that its limits cover Epanechnikov's range
                                

_iq11 kernel[58][86] = {0};     //Based on the max value that is contained in each table the appropriate IQ_math class was selected.
_iq11 target_model[3][16];      //IQ_math has 32 classes from 0-32 and the limits of each class can be found at the references to the corresponding manual.
_iq11 target_candidate[16];
Uint32 bin[58][86]={0};

Void HC_Epanechnikov_kernel(Void)
{
    int i,j;                
    _iq18 x,y,norm_x;                                        //_IQ18 goes up to 8191 with a precision of 0.000 003 815
    register _iq18 iqRectHeight = _IQ18(INITRECTHEIGHT);    //As the max value of the kernel was more than 4095(_IQ19) and less than 8191 _IQ18 was selected
    register _iq18 iqRectWidth = _IQ18(INITRECTWIDTH);      // The table containing the limits of each IQ_Math value is included in the references
    register _iq18 epanechnikov_cd = _IQ18mpy ( _IQ18mpy(_FtoIQ18(0.1),_FtoIQ18(PI))  , (_IQ18mpy(iqRectHeight,iqRectWidth)));
    
    for( i=0;i<INITRECTHEIGHT;i++)
    {
        for( j=0;j<INITRECTWIDTH;j++)
        {            
            x =  (_IQ18(i) - (_IQ18(INITRECTHEIGHT >> 1)) ) ;   //This was originally a division by 2 so it was replaced with a shift by 1
            y =    (_IQ18(j) - (_IQ18(INITRECTWIDTH >> 1)) )  ;  //This was originally a division by 2 so it was replaced with a shift by 1
            norm_x = _IQ18div ( (_IQ18mpy(x,x) ) , (_IQ18mpy( iqRectHeight, (_IQ18(INITRECTHEIGHT >> 2) ))) ) + _IQ18div ( (_IQ18mpy(y,y)) , (_IQ18mpy(iqRectWidth, (_IQ18(INITRECTWIDTH >> 2) ) ) ) );  //This was originally a division by 4 so it was replaced with a shift by 2
            kernel[i][j] = norm_x < _IQ18(1) ?( _IQXtoIQY(_IQ18mpy( epanechnikov_cd,(_IQ18(1)-norm_x)),18,11) ) : _IQXtoIQY(_IQ18(0),18,11); 
            epanechnikovSum+= _IQ11mpy(kernel[i][j],_IQ11(0.001)); //This multiplication happens due to IQ11 integer's part limits
        }                                                          //in order for the kernel to be successfully added to the Sum and to lose as much precision as possible
    }                                                                  
    epanechnikovSum = _IQ11mpy(epanechnikovSum,_IQ11(0.0000001)); //_IQ11 goes up to 1048576 with a precision of 0.000 488 28
}                                                                 //As the max value of the kernel was more than 524288(_IQ12) and less than 1048576 _IQ11 was selected

void HC_pdf_representation_target(Uint8 colorIndex, Uint8* color) //The initialization of the pdf_representation based for the corresponding ColorIndex
{                                                                 //0 is for Blue, 1 for Green and 1 for Red
    
    Uint16 i, j;
    
    register Uint16 row_index = INITRECTY;  
    register Uint16 clo_index = INITRECTX;

    #pragma UNROLL(58);
    for(i=0;i<INITRECTHEIGHT;i++)	
    {
        clo_index = INITRECTX;
        for (j=0; j<INITRECTWIDTH ; j++)
        {
            bin[i][j] = color[row_index * ROWLEN + clo_index] >> 4; //This was originally a division by 16 so it was replaced with a shift by 4

            target_model[colorIndex][(bin[i][j])] += kernel[i][j];
        
            clo_index++;
        }
        row_index++;
    }
}


void pdf_representation(Uint8* color, Uint16* rect) //The translation of the actual pdf_representation with inputs the Color(which is an array containg the pixel values for a specific color)
{                                                   // for which it will be executed and the dimensions of the rectangle
    Uint16 i, j;
    register Uint16 row_index = rect[1];            //Rectangle Height
    register Uint16 clo_index = rect[0];            //Rectangle Width

    #pragma UNROLL(58);
    for(i=0;i<rect[3];i++)	
    {
        clo_index = rect[0];                        //The selection of the IQ class is based on the maximum values each variable can obtain
        for (j=0; j<rect[2] ; j++)                  //With respect to the IQ_Math user's guide the appropriate values are selected
        {   

            bin[i][j] = color[row_index * ROWLEN + clo_index] >> 4; //This was originally a division by 16 so it was replaced with a shift by 4

            target_candidate[(bin[i][j])] += kernel[i][j];
        
            clo_index++;
        }
        row_index++;
    }
}

void CalcWeight(Uint8 colorIndex, Uint8* color, Uint16 *rect, float* CalWeight)  //The translation of the CalWeight Function
{                                                                                //Takes as arguments the Color (which is an array containg the pixel values for a specific color)
	register Uint16 clo_index = rect[0];                                         //ColorIndex which determines in which color it refers
	register Uint16 row_index = rect[1];                                         //Rect which contains the dimensions of the rectangle
    register Uint16 rows = rect[3];                                              //CalWeight which is the value that gets updated
    register Uint16 cols = rect[2]; 
    Uint16 i,j;
    
    #pragma UNROLL(58);
 	for(i=0;i<rows;i++)
 	{
 		clo_index = rect[0];
      	for(j=0;j<cols;j++)
      	{
            
            CalWeight[i * INITRECTWIDTH + j] = _IQ11toF(_IQ11mpy(_FtoIQ11(CalWeight[i * INITRECTWIDTH + j]),_IQ11sqrt(_IQ11div(target_model[colorIndex][bin[i][j]],target_candidate[bin[i][j]]))));
            clo_index++;
     	}
     	row_index++;
	 }
 }

Void initTarget(Uint8 matIndex)                          //Initializes the target_model or target canditate to 10000 (depending on the input)
{                                                        //As normalized_C was erased and there was no normalization anymore
    Uint16 i,j;                                          //the initialization of the values should adjust
    register _iq11 initValue = epanechnikovSum;          //The proof of this initialization is included in the report
    
    if(matIndex == MODEL)
    {
        for(i=0;i<3;i++)
            for(j=0;j<16;j++)
            {
                target_model[i][j] = initValue;
            }
    }
    else
    {
        for(j=0;j<16;j++)
        {
            target_candidate[j] = initValue;
        }
    }
}

Void initWeight(float* CalWeight)                       //Initializes the CalWeigh Matrix
{
    Uint16 i,j;
    register float init = 1;
    for(i=0;i<58;i++)
    {
      	for(j=0;j<86;j++)
      	{
      	 CalWeight[i * INITRECTWIDTH + j]=init;
     	}
    }
}

