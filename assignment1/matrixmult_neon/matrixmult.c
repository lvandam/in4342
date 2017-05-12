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

	SIZE = atoi(argv[1]);
	printf("Running with matrix size %d\n", SIZE);
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
inline void vectormultiply (int32x4_t *additive_value, int16x4_t *mat1_value, int16x4_t *mat2_value,int32x4_t *output)
{
	*output = vmlal_s16 (*additive_value,*mat1_value, *mat2_value);
}
void matMult(int16_t mat1[], int16_t mat2[], int32_t prod[SIZE][SIZE])
{
	int output_size = 2 * SIZE;
	int l,k;
	int16x4_t mat1_value, mat2_value;
	int32x4_t output[output_size/4], addvalue[output_size/4];
	unsigned int index_mat2 = 0, transfer_index = 0, dummy = 0;

	// Uncomment this value and arguments later on to print output
  //	int32_t print[output_size];
	//int i;

	for(l = 0 ; l < SIZE/4; l++)
	{
		// Fill a vector of size (size/4) with zeroes. A q suffix indicates the instruction run for 128 bit registers, in which we can put 4 variables of size 32 at the same time. So for every 4 variables, we need a 128 bit register.
		// Basically we initialize all 4 lanes of addvalue to zero.
		addvalue[l] = vmovq_n_s32(0);
		output[l] = vmovq_n_s32(0);
	}

	// Perform the operation SIZE*SIZE times, this way going over all the values of mat1. (16384 for max size, 16x for size = 4)
	for(l = 0; l < SIZE*SIZE; l++)
	{
		// mat1_value is the l-th element of matrix 1. Basically, this value is used SIZE time.
		// Difference with previous vmov is that we use the d registers here (64 bits).
		mat1_value = vmov_n_s16 (mat1[l]);
		// We only need SIZE/4 runs in the fbecause we load 4 values at once.
		for(k = 0 ; k < SIZE/4; k++)
		{
			index_mat2 = dummy;
			// Load elements of matrix 2 into neon register/lane. Difference here is that instead of setting all elements to the same value, we load 4 values at once.
			mat2_value = vld1_s16 (&mat2[index_mat2]);

			// Vector Multiply Accumulate Long: Multiply one value of mat1 with four values of mat2, then add a different addvalue and obtain output.
			// Basically, we compute output = addvalue + mat1*mat2.
			//*output = vmlal_s16(addvalue[k],mat1_value, mat2_value);
			vectormultiply (&addvalue[k], &mat1_value, &mat2_value,&output[k]);
			// Put output in addvalue, so we accumulate the sum
			addvalue[k] = output[k];
			dummy +=4;
		}

		index_mat2 += output_size-SIZE;

		if ((l + 1) % SIZE == 0 )
		{

		// Uncomment this (and initialization of print variable) to print output
		// for(k=0; k < SIZE/4; k++)
		// {
		// 	vst1q_s32(print,*(output+k));
		// 	for (i = 0; i < 4; i++)
		// 	{
		// 		printf ("%d ", print[i]);
		// 	}
		// 	transfer_index +=4;
		// }

			transfer_index += output_size-SIZE;
			for(k = 0 ; k < SIZE/4; k++)
			{
				// Put zeros in addvalue again, so it can be reused to store the temporary computations
				addvalue[k] = vmovq_n_s32(0);
			}
			// Reset index to 0 to prepare for next mat1 value
			 dummy = 0;
		}

	}

}
