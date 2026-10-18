# LLVM Vectorisation Hint Pass

A custom out-of-tree LLVM pass that detects loops and attaches `llvm.loop.vectorize.enable` metadata to their latch terminators, allowing LLVM's built-in loop vectoriser to transform scalar loops into SIMD operations.

This is written as a learning exercise in LLVM's New Pass Manager infrastructure, and is not intended for production-level use.

---

## What it does

The pass uses `LoopAnalysis` to find loops in a function, constructs a self-referential `MDNode` carrying the vectorisation hint, merges it with any existing loop metadata, and attaches it to the latch branch instruction. The vectoriser then reads this hint and rewrites the loop to utilise SIMD instructions.

---

## Build

Requires LLVM 21+ and CMake 3.15+.

```bash
mkdir build && cd build
cmake -G Ninja -DLLVM_DIR=$(llvm-config --cmakedir) ..
ninja
```

---

## Usage

```bash
# 1. Compile to raw IR
clang++ -S -emit-llvm -O0 -Xclang -disable-O0-optnone -fno-discard-value-names input.cpp -o raw.ll

# 2. Canonicalise
opt -passes='mem2reg,loop-simplify,loop-rotate' raw.ll -S -o canonical.ll

# 3. Run the pass and vectoriser
opt -load-pass-plugin=./build/libMyPass.so -passes="my-pass,loop-vectorize" -S canonical.ll -o vectorized.ll

# 4. Compile to binary
clang++ -O0 vectorized.ll -o output
```

---

## Benchmark

**Workload:** 1000×1000 matrix addition, 1000 iterations (1 billion floating-point additions)

**Result (30 runs, Apple M-series, LLVM 21.1.4):**

| Variant | Median | Min | Max | Stdev |
|---|---|---|---|---|
| Without pass | 1141 ms | 1135 ms | 1173 ms | 7.37 ms |
| With pass | 217 ms | 213 ms | 259 ms | 10.53 ms |
| clang -O3 (reference) | ~140 ms | — | — | — |

**Speedup: 5.26x. 81% reduction in runtime.**

The difference is visible in the assembly, where without the pass, the inner loop emits `fadd s0, s0, s1` (one float at a time). And with the pass, it emits `fadd.4s v0, v0, v4` (four floats at once using 128-bit NEON registers), with the loop unrolled to process 16 elements per iteration.

Raw timing data and the analysis script are in `results/raw/` and `scripts/`.

---

## Repository structure

```
benchmarks/matrix_add/   — benchmark source
experiments/             — earlier 1D array experiments
results/
  raw/                   — per-run timing CSVs
  ir/                    — IR artifacts
  assembly/              — assembly artifacts
docs/
  experiment-log.md      — methodology and results log
scripts/
  run_benchmark.sh       — 30-run timing script
  analyse.py             — statistical analysis
build/                   — compiled pass plugin
MyPass.cpp               — pass source
```

---

## Limitations

The pass attaches the hint to every loop it finds, including loops in standard library code pulled in by headers. A production-level pass would be more robust in filtering by module and/or applying more precise safety checks. The vectoriser may still decline to vectorise if it detects unsafe conditions. The hint is advisory, and isn't a guarantee.
