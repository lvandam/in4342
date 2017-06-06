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

_iq18 kernel[58][86] = {0};
_iq11 target_model[3][16];
_iq11 target_candidate[16];
//float CalWeight[58][86];


Void Epanechnikov_kernel(Uint16* rect)
{
    int i,j; 
    int count = 0,sum=0;
    _iq18 x1,x2,x,y,norm_x;
    register _iq18 iqhalf = _IQ18(0.5);
    register _iq18 iqquarter = _IQ18(0.25);
    register _iq18 iqRectHeight = _IQ18(rect[3]);
    register _iq18 iqRectWidth = _IQ18(rect[2]);
    register _iq18 epanechnikov_cd = _IQ18mpy ( _IQ18mpy(_FtoIQ18(0.1),_FtoIQ18(PI))  , (_IQ18mpy(iqRectHeight,iqRectWidth)));
    
    for( i=0;i<rect[3];i++)
    {
        for( j=0;j<rect[2];j++)
        {            
            x =  (_IQ18(i) - (_IQ18mpy( iqRectHeight,iqhalf )) ) ;
            y =    (_IQ18(j) - (_IQ18mpy( iqRectWidth,iqhalf )) )  ;
            norm_x = _IQ18div ( (_IQ18mpy(x,x) ) , (_IQ18mpy( iqRectHeight, (_IQ18mpy( iqRectHeight, iqquarter) ))) ) + _IQ18div ( (_IQ18mpy(y,y)) , (_IQ18mpy(iqRectWidth, (_IQ18mpy ( iqRectWidth, iqquarter) ) ) ) );       
            kernel[i][j] = norm_x < _IQ18(1) ?( _IQ18mpy( epanechnikov_cd,(_IQ18(1)-norm_x)) ) : _IQ18(0); 
        }
    }
}

Void HC_Epanechnikov_kernel(Void)
{
    int i,j; 
    int count = 0,sum=0;
    _iq18 x1,x2,x,y,norm_x;
    register _iq18 iqhalf = _IQ18(0.5);
    register _iq18 iqquarter = _IQ18(0.25);
    register _iq18 iqRectHeight = _IQ18(INITRECTHEIGHT);
    register _iq18 iqRectWidth = _IQ18(INITRECTWIDTH);
    register _iq18 epanechnikov_cd = _IQ18mpy ( _IQ18mpy(_FtoIQ18(0.1),_FtoIQ18(PI))  , (_IQ18mpy(iqRectHeight,iqRectWidth)));
    
    for( i=0;i<INITRECTHEIGHT;i++)
    {
        for( j=0;j<INITRECTWIDTH;j++)
        {            
            x =  (_IQ18(i) - (_IQ18mpy( iqRectHeight,iqhalf )) ) ;
            y =    (_IQ18(j) - (_IQ18mpy( iqRectWidth,iqhalf )) )  ;
            norm_x = _IQ18div ( (_IQ18mpy(x,x) ) , (_IQ18mpy( iqRectHeight, (_IQ18mpy( iqRectHeight, iqquarter) ))) ) + _IQ18div ( (_IQ18mpy(y,y)) , (_IQ18mpy(iqRectWidth, (_IQ18mpy ( iqRectWidth, iqquarter) ) ) ) );       
            kernel[i][j] = norm_x < _IQ18(1) ?( _IQ18mpy( epanechnikov_cd,(_IQ18(1)-norm_x)) ) : _IQ18(0); 
        }
    }
}


Void retModel(float *retbuf)
{
    int i,j;
    for(i=0;i<3;i++) 
        for(j=0;j<16;j++) retbuf[i * 16 + j] = _IQ11toF(target_model[i][j]);
}

Void retCandidate(float *retbuf)
    
{
    int j; 
    for(j=0;j<16;j++) retbuf[j] = _IQ11toF(target_candidate[j]);
}

Void retEpan(float *retbuf)
{
    int i,j;
    for(i=0;i<INITRECTHEIGHT;i++) 
        for(j=0;j<INITRECTWIDTH;j++) retbuf[i * INITRECTWIDTH + j] = _IQ18toF(kernel[i][j]);
}

/*Void retWeight(float *retbuf)
{
    int i,j;
    for(i=0;i<INITRECTHEIGHT;i++) 
        //for(j=0;j<initRectWidth;j++) retbuf[i * initRectWidth + j] = _IQ11toF(CalWeight[i][j]);
        for(j=0;j<INITRECTWIDTH;j++) retbuf[i * INITRECTWIDTH + j] = CalWeight[i][j];
}*/

void pdf_representation_target(Uint8 colorIndex, Uint8* color, Uint16* rect)
{    
    _iq20 bin;
    Uint16 i, j;
    register Uint16 row_index = rect[1];
    register Uint16 clo_index = rect[0];
    register _iq20 invbinWid = _IQ20div(_IQ20(1),_IQ20(binWidth));   

    for(i=0;i<rect[3];i++)	
    {
        clo_index = rect[0];
        for (j=0; j<rect[2] ; j++)
        {
            bin = _IQ20mpy( _IQ20(color[row_index * ROWLEN + clo_index]) , invbinWid);

            target_model[colorIndex][_IQ20int(bin)] += _IQXtoIQY(kernel[i][j], 18, 11);
        
            clo_index++;
        }
        row_index++;
    }
}

void HC_pdf_representation_target(Uint8 colorIndex, Uint8* color)
{    
    _iq20 bin;
    Uint16 i, j;
    
    register Uint16 row_index = INITRECTY;
    register Uint16 clo_index = INITRECTX;
    register _iq20 invbinWid = _IQ20div(_IQ20(1),_IQ20(binWidth));   

    for(i=0;i<INITRECTHEIGHT;i++)	
    {
        clo_index = INITRECTX;
        for (j=0; j<INITRECTWIDTH ; j++)
        {
            bin = _IQ20mpy( _IQ20(color[row_index * ROWLEN + clo_index]) , invbinWid);

            target_model[colorIndex][_IQ20int(bin)] += _IQXtoIQY(kernel[i][j], 18, 11);
        
            clo_index++;
        }
        row_index++;
    }
}


void pdf_representation(Uint8* color, Uint16* rect)
{    
    _iq20 bin;
    Uint16 i, j;
    register Uint16 row_index = rect[1];
    register Uint16 clo_index = rect[0];
    register _iq20 invbinWid = _IQ20div(_IQ20(1),_IQ20(binWidth));   

    for(i=0;i<rect[3];i++)	
    {
        clo_index = rect[0];
        for (j=0; j<rect[2] ; j++)
        {
            bin = _IQ20mpy( _IQ20(color[row_index * ROWLEN + clo_index]) , invbinWid);

            target_candidate[_IQ20int(bin)] += _IQXtoIQY(kernel[i][j], 18, 11);
        
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
    Uint16 bin = 0;
    Uint16 i,j;
    
    register _iq20 invbinWid = _IQ20div(_IQ20(1),_IQ20(binWidth)); 

 	for(i=0;i<rows;i++)
 	{
 		clo_index = rect[0];
      	for(j=0;j<cols;j++)
      	{
            bin = _IQ20int(_IQ20mpy( _IQ20(color[row_index * ROWLEN + clo_index]) , invbinWid));
            CalWeight[i * INITRECTWIDTH + j] = _IQ11toF(_IQ11mpy(_FtoIQ11(CalWeight[i * INITRECTWIDTH + j]),_IQ11sqrt(_IQ11div(target_model[colorIndex][bin],target_candidate[bin]))));
            clo_index++;
     	}
     	row_index++;
	 }
 }

Void initTarget(Uint8 matIndex)
{
    Uint16 i,j;
    register _iq11 initValue = _IQ11(10000);
    
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
    //_iq11 init = _IQ11(1);
    register float init = 1;
    for(i=0;i<58;i++)
    {
      	for(j=0;j<86;j++)
      	{
      	 CalWeight[i * INITRECTWIDTH + j]=init;
     	}
    }
}

