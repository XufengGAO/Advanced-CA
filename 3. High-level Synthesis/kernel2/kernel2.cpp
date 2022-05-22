#include "kernel2.h"

void kernel2( int array[ARRAY_SIZE] )
{
    int i, reg2, reg1, reg0, result;
    // assign first 3 array values
    reg2 = array[2];
    reg1 = array[1];
    reg0 = array[0];

    for(i=3; i<ARRAY_SIZE; i++){
	#pragma HLS PIPELINE

    	result = reg2 + reg1 * reg0;
    	array[i] = result;
    	// shift register values
    	reg0 = reg1;
    	reg1 = reg2;
    	reg2 = result;

    	// store result in memory



    }

}
