#include "kernel4.h"

void kernel4(int array[ARRAY_SIZE], int index[ARRAY_SIZE], int offset)
{

	int sum = array[offset];

    for (int i=offset+1; i<ARRAY_SIZE-1; ++i) {
	#pragma HLS PIPELINE
    	sum = sum - index[i] * array[i] + index[i] * array[i+1];
    }

    array[offset] = sum;
}
