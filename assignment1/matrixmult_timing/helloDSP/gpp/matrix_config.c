#include <dsplink.h>
#include "matrix_config.h"

NORMAL_API DSP_STATUS matrix_fill(Uint8 matNum, Uint16 matrix[MAX_MATSIZE][MAX_MATSIZE])
{
    Uint8 i, j;
	
    if(matNum == 1)
    {
        for (i = 0;i < MAX_MATSIZE; i++)
        {
            for (j = 0; j < MAX_MATSIZE; j++)
            {
                matrix[i][j] = i+j*2;
            }
        }
    }
	else if(matNum == 2)
    {
        for(i = 0; i < MAX_MATSIZE; i++)
        {
            for (j = 0; j < MAX_MATSIZE; j++)
            {
                matrix[i][j] = i+j*3;
            }
        }
    }
	else
    {
        return DSP_EINVALIDARG;
    }
    return DSP_SOK;
}

/* TODO This extra function is just to time the gpp matrix multiplication assuming 128x128 matrices. The rest of the code (gpp+dsp together) cannot handle max_matsize bigger than 8 yet, so that's why this extra function is needed for now */
NORMAL_API DSP_STATUS matrix_fill_test(Uint8 matNum, Uint16 matrix[128][128])
{
    Uint8 i, j;
	
    if(matNum == 1)
    {
        for (i = 0;i < 128; i++)
        {
            for (j = 0; j < 128; j++)
            {
                matrix[i][j] = i+j*2;
            }
        }
    }
	else if(matNum == 2)
    {
        for(i = 0; i < 128; i++)
        {
            for (j = 0; j < 128; j++)
            {
                matrix[i][j] = i+j*3;
            }
        }
    }
	else
    {
        return DSP_EINVALIDARG;
    }
    return DSP_SOK;
}
