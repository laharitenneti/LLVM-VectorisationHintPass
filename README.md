# LLVM Vectorisation Hint Pass

A custom LLVM pass that detects loops and attaches vectorisation metadata, allowing LLVM's loop vectorizer to transform scalar loops into SIMD operations.

## Experiment

- baseline scalar loop
- custom pass adds llvm.loop.vectorize.enable
- LLVM vectorizer generates NEON SIMD
- benchmark: 1000x1000 matrix addition × 1000 iterations


## Results

| Configuration | Time |
|---|---:|
| Without vectorisation hint | 1134 ms |
| With custom pass | 271 ms |
| clang -O3 | 140 ms |
