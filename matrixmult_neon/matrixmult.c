#include "stdio.h"
#include "Timer.h"
#include "arm_neon.h"

int SIZE;
void matMult(int16_t mat1[], int16_t mat2[], int32_t prod[SIZE][SIZE]);

int main(int argc, char** argv)
{
	int i, j;
	Timer totalTime;
	int16_t *mat1, *mat2;
	int32_t prod[sizeof(int32_t)*SIZE][sizeof(int32_t)*SIZE];

	initTimer(&totalTime, "NEON execution time");

	// Determine size and allocate memory for matrices
	SIZE = 4;
	mat1 = malloc(SIZE * SIZE * sizeof(int16_t));
	mat2 = malloc(SIZE * SIZE * sizeof(int16_t));

	// Using one long vector instead of matrices (or an 1D matrix)
	for (i = 0; i < SIZE; i++)
	{
		for (j = 0; j < SIZE; j++)
		{
			mat1[i*SIZE + j] = i+j*2;
		}
	}

	for(i = 0; i < SIZE; i++)
	{
		for (j = 0; j < SIZE; j++)
		{
			mat2[i*SIZE + j] = i+j*3;
		}
	}

	// Multiplication and timer
	startTimer(&totalTime);
	matMult(mat1,mat2,prod);
	stopTimer(&totalTime);
	printTimer(&totalTime);

	return 0;
}

void matMult(int16_t mat1[], int16_t mat2[], int32_t prod[SIZE][SIZE])
{
	int output_size = 2 * SIZE;
	int l,k,i, success;
	int16x4_t data1;
	int32x4_t output[output_size/4];
	int32x4_t addvalue[output_size/4];
	int16x4_t constant_value; // 4 numbers of 16 bits
	unsigned int index_input = 0;
	unsigned int transfer_index = 0 ;
	int32_t *pres, prod_ver[output_size][output_size];
	int size = 64;
	int size_n;
	// int32_t print[output_size];

// output_size = MAT_size
// SIZE = SIZE
	size_n = (size%4) ? size+4-size%4 : size;

	// Allocate memory for output
	pres = malloc(output_size * output_size * sizeof(int32_t));
	for(l = 0 ; l < size_n/4; l++)
	{
		// Fill a vector of size 32 (size/4) with zeroes. A q suffix indicates the instruction run for 128 bit registers, in which we can put 4 variables of size 32 at the same time.
		addvalue[l] = vmovq_n_s32(0);
	}

	// Perform the operation SIZE*SIZE times (16384 for max size, 16x for size = 4)
	for(l = 0; l < size_n*size_n; l++)
	{
		// constant_value is the l-th element of matrix 1. Basically, this value is used SIZE times. In this program this is exploited by loading it and performing all the multplications right away
		constant_value = vmov_n_s16 (mat1[l]);
		for(k = 0 ; k < size_n/4 ; k++)
		{
			// Load elements into neon register/lane
			data1 = vld1_s16 (&mat2[index_input]);

			// Multiply data1 and data2 and store output in output.
			// Vector Multiply Accumulate Long: Multiply data1 and data2, store result in additive_value
			*output = vmlal_s16(addvalue[k],constant_value, data1);

			// // Clone output in addvalue
			addvalue[k] = output[k];
			index_input +=4;
		}

		//printf ("%d ", addvalue[l]);

		index_input += output_size-size_n;
		if ((l + 1) % size_n == 0 )
		{
			index_input = 0;

			for(k = 0 ; k < size_n/4 ; k++)
			{
				// Store loop output in general output
				vst1q_s32(&pres[transfer_index],addvalue[k]);
				// Storing 4 values at a time
				transfer_index +=4;
			}

			transfer_index += output_size-size_n;
			for(k = 0 ; k < size_n/4; k++)
			{
				// Put zeros in loop output again
				addvalue[k] = vmovq_n_s32(0);
			}
		}

	}
	for (l = 0; l < size_n; l++){

		for (k= 0; k < size_n; k++) {
			printf("%d ", pres[l*size_n+k]);
		}
		printf("\n");
	}

}

// seed print en oude functies
//MAC4 (&addvalue[k], &constant_value, &data1,&output[k]);
// printf ("%d ", output[k]);
// if (SIZE % (int) k == 0){
// 	printf("\n");
// }

// vst1q_s32(print,*output);
//
// printf ("Result: = ");
// for (i = 0; i < 4; i++)
// {
// 	printf ("%02d ", print[i]);
// }
// printf ("\n");
