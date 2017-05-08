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
	SIZE = 8;
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
inline void MAC4 (int32x4_t *additive_value, int16x4_t *data1, int16x4_t *data2,int32x4_t *mac_output)
{
	*mac_output = vmlal_s16 (*additive_value,*data1, *data2);
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
	int32_t *pres, prod_ver[SIZE][SIZE];
	int32_t print[output_size];


	// Allocate memory for output
	pres = malloc(output_size * output_size * sizeof(int32_t));
	for(l = 0 ; l < SIZE/4; l++)
	{
		// Fill a vector of size (size/4) with zeroes. A q suffix indicates the instruction run for 128 bit registers, in which we can put 4 variables of size 32 at the same time. So for every 4 variables, we need a 128 bit register.
		// Basically we initialize all 4 lanes of addvalue to zero.
		addvalue[l] = vmovq_n_s32(0);
	}

	printf("\nMatrix 1:\n");
	for (l = 0; l < SIZE; l++){
		for (k= 0; k < SIZE; k++) {
			printf("%d ", mat1[l*SIZE+k]);
		}
		printf("\n");
	}

	printf("\nMatrix 2:\n");
	for (l = 0; l < SIZE; l++){
		for (k= 0; k < SIZE; k++) {
			printf("%d ", mat2[l*SIZE+k]);
		}
		printf("\n");
	}

			printf("\nResult: \n");

	// Perform the operation SIZE*SIZE times, this way going over all the values of mat1. (16384 for max size, 16x for size = 4)
	for(l = 0; l < SIZE*SIZE; l++)
	{
		// constant_value is the l-th element of matrix 1. Basically, this value is used SIZE time.
		// Difference with previous vmov is that we use the d registers here (64 bits).
		constant_value = vmov_n_s16 (mat1[l]);
		// We only need SIZE/4 runs in the fbecause we load 4 values at once.
		for(k = 0 ; k*4 < SIZE ; k++)
		{
			// Load elements of matrix 2 into neon register/lane. Difference here is that instead of setting all elements to the same value, we load 4 values at once.
			data1 = vld1_s16 (&mat2[index_input]);

			// Vector Multiply Accumulate Long: Multiply one value of mat1 with four values of mat2, then add a different addvalue and obtain output.
			// Basically, we compute output = addvalue + mat1*mat2.
			//*output = vmlal_s16(addvalue[k],constant_value, data1);

			MAC4 (&addvalue[k], &constant_value, &data1,&output[k]);

			// Put output in addvalue, so we accumulate the sum
			addvalue[k] = output[k];
			index_input +=4;
		}

		// vst1q_s32(print,*output);
		// for (i = 0; i < 4; i++)
		// {
		// 	printf ("%d ", print[i]);
		// }
		// printf ("\n");
		// This could be wrong.
		//index_input += SIZE;
		if ((l + 1) % SIZE == 0 )
		{
			//Print output only when sum has been accumulated SIZE times
			vst1q_s32(print,*output);
			for (i = 0; i < 4; i++)
			{
				printf ("%d ", print[i]);
			}
			printf ("\n");


			for(k = 0 ; k*4 < SIZE ; k++)
			{
				// Store loop output in general output
				vst1q_s32(&pres[transfer_index],addvalue[k]);
				// Storing 4 values at a time
				transfer_index +=4;
			}

			transfer_index += SIZE;
			for(k = 0 ; k*4 < SIZE; k++)
			{
				// Put zeros in addvalue again, so it can be reused to store the temporary computations
				addvalue[k] = vmovq_n_s32(0);
			}
			// Reset index to 0 to prepare for next mat1 value
			 index_input = 0;
		}

	}

	// old and wrong output printing:
	// printf("\nOutput matrix:\n");
	// for (l = 0; l < SIZE; l++){
	// 	for (k= 0; k < SIZE; k++) {
	// 		printf("%d ", pres[l*SIZE+k]);
	// 	}
	// 	printf("\n");
	// }
printf ("looped %d times\n", k);
}

// seed print en oude functies
//MAC4 (&addvalue[k], &constant_value, &data1,&output[k]);

// }
