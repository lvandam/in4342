#define MAX_MATSIZE 8

NORMAL_API DSP_STATUS matrix_fill(Uint8 matNum, Uint16 matrix[MAX_MATSIZE][MAX_MATSIZE]);

/* TODO This extra function is just to time the gpp matrix multiplication assuming 128x128 matrices. The rest of the code (gpp+dsp together) cannot handle max_matsize bigger than 8 yet, so that's why this extra function is needed for now */
NORMAL_API DSP_STATUS matrix_fill_test(Uint8 matNum, Uint16 matrix[128][128]);
