echo "
#include <iostream>											\n
#include <math.h>                                           \n
// Kernel function to add the elements of two arrays        \n
__global__                                                  \n
void add(int n, float *x, float *y)                         \n
{                                                           \n
  for (int i = 0; i < n; i++)                               \n
    y[i] = x[i] + y[i];                                     \n
}                                                           \n
                                                            \n
int main(void)                                              \n
{                                                           \n
  int N = 1<<20;                                            \n
  float *x, *y;                                             \n
                                                            \n
  // Allocate Unified Memory – accessible from CPU or GPU   \n
  cudaMallocManaged(&x, N*sizeof(float));                   \n
  cudaMallocManaged(&y, N*sizeof(float));                   \n
                                                            \n
  // initialize x and y arrays on the host                  \n
  for (int i = 0; i < N; i++) {                             \n
    x[i] = 1.0f;                                            \n
    y[i] = 2.0f;                                            \n
  }                                                         \n
                                                            \n
  // Run kernel on 1M elements on the GPU                   \n
  add<<<1, 1>>>(N, x, y);                                   \n
                                                            \n
  // Wait for GPU to finish before accessing on host        \n
  cudaDeviceSynchronize();                                  \n
                                                            \n
  // Check for errors (all values should be 3.0f)           \n
  float maxError = 0.0f;                                    \n
  for (int i = 0; i < N; i++)                               \n
    maxError = fmax(maxError, fabs(y[i]-3.0f));             \n
  std::cout << "Max error: " << maxError << std::endl;      \n
                                                            \n
  // Free memory                                            \n
  cudaFree(x);                                              \n
  cudaFree(y);                                              \n
                                                            \n
  return 0;                                                 \n
}                                                           \n
" > add.cu
