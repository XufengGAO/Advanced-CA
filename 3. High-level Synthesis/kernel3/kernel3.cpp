#include "kernel3.h"

void kernel3( float hist[ARRAY_SIZE], float weight[ARRAY_SIZE], int index[ARRAY_SIZE])
{

	int index0, index1, index2, index3;
	float hist0, hist1, hist2, hist3, weight3;

	// read first 3 index values
	index0 = index[0];
	index1 = index[1];
	index2 = index[2];

	// calculate hist values
	hist0 = hist[index0] + weight[0];

	// check dependency manually
	if(index1 == index0){
		// mark dependency index
		index0 = -1;
		hist1 = hist0 + weight[1];
	}else{
		hist1 = hist[index1] + weight[1];
	}

	if(index2 == index1){
		index1 = -1;
		hist2 = hist1 + weight[2];
	}else if(index2 == index0){
		index0 = -1;
		hist2 = hist0 + weight[2];
	}else{
		hist2 = hist[index2] + weight[2];
	}

	for (int i=3; i<ARRAY_SIZE; ++i) {

	#pragma HLS PIPELINE II=4
   	index3 = index[i];
    	weight3 = weight[i];

    	// check dependency manually
    	if(index3 == index2){
    		index2 = -1;
    		hist3 = hist2 + weight3;
    	}else if(index3 == index1){
    		index1 = -1;
    		hist3 = hist1 + weight3;
    	}else if(index3 == index0){
    		index0 = -1;
    		hist3 = hist0 + weight3;
    	}else{
    		hist3 = hist[index3] + weight3;
    	}

    	// only write back independent hist values to memory
    	if(index0 != -1){
    		hist[index0] = hist0;
    	}

    	// shift registers
    	index0 = index1;
    	index1 = index2;
    	index2 = index3;

    	hist0 = hist1;
    	hist1 = hist2;
    	hist2 = hist3;
    }

    // write back the last 3 values to memory
	if(index0 != -1){
		hist[index0] = hist0;
	}
	if(index1 != -1){
		hist[index1] = hist1;
	}
	if(index2 != -1){
		hist[index2] = hist2;
	}
}
