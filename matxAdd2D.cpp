#include <iostream>
#include <chrono>
using namespace std;

const int N = 1000;

void matrix_add(float A[N][N], float B[N][N], float C[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            C[i][j] = A[i][j] + B[i][j];
        }
    }
}

int main() {
    static float A[N][N], B[N][N], C[N][N];

    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++) {
            A[i][j] = i + j;
            B[i][j] = i * j;
        }

    auto start = chrono::high_resolution_clock::now();
    for (int t = 0; t < 1000; t++)  // run 1000 times to make timing meaningful
        matrix_add(A, B, C);
    auto end = chrono::high_resolution_clock::now();

    cout << chrono::duration_cast<chrono::milliseconds>(end - start).count() << " ms\n";
    cout << C[500][500] << "\n";  // this is just to test it with -o3, so the compiler doesn't abandon the computation.

    return 0;
}
