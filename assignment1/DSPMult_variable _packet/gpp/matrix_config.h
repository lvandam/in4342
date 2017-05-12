#define MAX_MATSIZE 128

NORMAL_API DSP_STATUS matrix_fill(Uint8 matNum, Uint8 size, Int16 matrix[MAX_MATSIZE][MAX_MATSIZE]);

Void matrix_mult(Uint8 size, Int16 matrix1[MAX_MATSIZE][MAX_MATSIZE], Int16 matrix2[MAX_MATSIZE][MAX_MATSIZE], Int32 prod[MAX_MATSIZE][MAX_MATSIZE]);

NORMAL_API DSP_STATUS matrix_compare(Uint8 size, Int32 matrix1[MAX_MATSIZE][MAX_MATSIZE], Int32 matrix2[MAX_MATSIZE][MAX_MATSIZE]);