#include <dspMeanshift.h>

#define PI  3.14159
#define ROWLEN 640
#define COLLEN 480

#define INITRECTHEIGHT  58
#define INITRECTWIDTH   86
#define INITRECTX      228
#define INITRECTY      367


Uint16 binWidth = 16;
Uint16 cfgMaxIter = 8;

_iq11 kernel[58][86] = {0};
_iq11 target_model[3][16];
_iq11 target_candidate[16];
Uint32 bin[58][86]={0};

Void HC_Epanechnikov_kernel(Void)
{
    int i,j;
    _iq18 x,y,norm_x;
    register _iq18 iqRectHeight = _IQ18(INITRECTHEIGHT);
    register _iq18 iqRectWidth = _IQ18(INITRECTWIDTH);
    register _iq18 epanechnikov_cd = _IQ18mpy ( _IQ18mpy(_FtoIQ18(0.1),_FtoIQ18(PI))  , (_IQ18mpy(iqRectHeight,iqRectWidth)));
    
    for( i=0;i<INITRECTHEIGHT;i++)
    {
        for( j=0;j<INITRECTWIDTH;j++)
        {            
            x =  (_IQ18(i) - (_IQ18(INITRECTHEIGHT >> 1)) ) ;
            y =    (_IQ18(j) - (_IQ18(INITRECTWIDTH >> 1)) )  ;
            norm_x = _IQ18div ( (_IQ18mpy(x,x) ) , (_IQ18mpy( iqRectHeight, (_IQ18(INITRECTHEIGHT >> 2) ))) ) + _IQ18div ( (_IQ18mpy(y,y)) , (_IQ18mpy(iqRectWidth, (_IQ18(INITRECTWIDTH >> 2) ) ) ) );  
            kernel[i][j] = norm_x < _IQ18(1) ?( _IQXtoIQY(_IQ18mpy( epanechnikov_cd,(_IQ18(1)-norm_x)),18,11) ) : _IQXtoIQY(_IQ18(0),18,11); 
        }
    }
}

void HC_pdf_representation_target(Uint8 colorIndex, Uint8* color)
{    
    
    Uint16 i, j;
    
    register Uint16 row_index = INITRECTY;
    register Uint16 clo_index = INITRECTX;

    #pragma UNROLL(58);
    for(i=0;i<INITRECTHEIGHT;i++)	
    {
        clo_index = INITRECTX;
        for (j=0; j<INITRECTWIDTH ; j++)
        {
            bin[i][j] = color[row_index * ROWLEN + clo_index] >> 4;

            target_model[colorIndex][(bin[i][j])] += kernel[i][j];
        
            clo_index++;
        }
        row_index++;
    }
}


void pdf_representation(Uint8* color, Uint16* rect)
{    
    Uint16 i, j;
    register Uint16 row_index = rect[1];
    register Uint16 clo_index = rect[0];

    #pragma UNROLL(58);
    for(i=0;i<rect[3];i++)	
    {
        clo_index = rect[0];
        for (j=0; j<rect[2] ; j++)
        {

            bin[i][j] = color[row_index * ROWLEN + clo_index] >> 4;

            target_candidate[(bin[i][j])] += kernel[i][j];
        
            clo_index++;
        }
        row_index++;
    }
}

void CalcWeight(Uint8 colorIndex, Uint8* color, Uint16 *rect, float* CalWeight)
{
	register Uint16 clo_index = rect[0];
	register Uint16 row_index = rect[1];
    register Uint16 rows = rect[3];
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

Void initTarget(Uint8 matIndex)
{
    Uint16 i,j;
    register _iq11 initValue = _IQ11(3700);
    
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

Void initWeight(float* CalWeight)
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

