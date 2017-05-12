#include <dsplink.h>
#include <system_os.h>
#include "matrix_config.h"

NORMAL_API DSP_STATUS matrix_fill(Uint8 matNum, Uint8 size, Int16 matrix[MAX_MATSIZE][MAX_MATSIZE])
{
    Uint8 i, j;
	
    if(matNum == 1)
    {
        for (i = 0;i < size; i++)
        {
            for (j = 0; j < size; j++)
            {
                matrix[i][j] = i+j*2;
            }
        }
    }
	else if(matNum == 2)
    {
        for(i = 0; i < size; i++)
        {
            for (j = 0; j < size; j++)
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

Void matrix_mult(Uint8 size, Int16 matrix1[MAX_MATSIZE][MAX_MATSIZE], Int16 matrix2[MAX_MATSIZE][MAX_MATSIZE], Int32 prod[MAX_MATSIZE][MAX_MATSIZE])
{
    Uint16 i, j, k;
	for (i = 0;i < size; i++)
	{
		for (j = 0; j < size; j++)
		{
			prod[i][j]=0;
			for(k=0;k<size;k++)
				prod[i][j] +=(Int32) matrix1[i][k] * (Int32) matrix2[k][j];
		}
	}   
}

NORMAL_API DSP_STATUS matrix_compare(Uint8 size, Int32 matrix1[MAX_MATSIZE][MAX_MATSIZE], Int32 matrix2[MAX_MATSIZE][MAX_MATSIZE])
{
    DSP_STATUS status = DSP_SOK;
    Uint16 i, j;
    
    for (i = 0;i < size; i++)
	{
		for (j = 0; j < size; j++)
		{
            if( matrix1[i][j] != matrix2[i][j] ) 
            {
                status = DSP_EINVALIDARG;
                SYSTEM_2Print("Wrong value at (%d,%d)\n",i,j);
            }
        }
    }
    
    return status;
}