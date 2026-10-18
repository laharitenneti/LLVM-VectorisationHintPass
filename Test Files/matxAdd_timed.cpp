#include <iostream>
#include <chrono>
using namespace std;

void matrix_add(float *A, float *B, float *C, int n) {
    for (int i = 0; i < n; i++) {
        C[i] = A[i] + B[i];
    }
}

int main() {
    const int n = 100000000; // 100 million elements
    float *A = new float[n];
    float *B = new float[n];
    float *C = new float[n];

    for (int i = 0; i < n; i++) { A[i] = i; B[i] = i * 2; }

    auto start = chrono::high_resolution_clock::now();
    matrix_add(A, B, C, n);
    auto end = chrono::high_resolution_clock::now();

    cout << chrono::duration_cast<chrono::milliseconds>(end - start).count() << " ms\n";

    delete[] A; delete[] B; delete[] C;
    return 0;
}
