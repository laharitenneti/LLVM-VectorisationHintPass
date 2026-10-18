#include <iostream>
using namespace std;

void matrix_add(float *A, float *B, float *C, int n) {
	for (int i = 0; i < n; i++) {
		C[i] = A[i] + B[i];
	}
}

int main() {
	float A[] = {1, 2, 3, 4};
	float B[] = {5, 6, 7, 8};
	float C[4];
	int n = 4;

	matrix_add(A, B, C, n);

	return 0;
}
