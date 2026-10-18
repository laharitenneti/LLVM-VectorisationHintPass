# Experiment Log

---

## Entry 1 — Baseline reproduction

**Date:** 2026-10-18
**Git commit:** 692ad2e
**Machine:** Apple M-series (arm64)
**OS:** macOS 26.3.1
**LLVM/Clang version:** Homebrew clang 21.1.4
**Target triple:** arm64-apple-darwin25.3.0

**Benchmark:** 1000×1000 matrix addition, 1000 iterations (1 billion additions)
**Input:** A[i][j] = i + j, B[i][j] = i * j
**Correctness check:** C[500][500] = 251000 ✓ (both variants)

**Pipeline — with pass:**
1. clang++ -S -emit-llvm -O0 -Xclang -disable-O0-optnone -fno-discard-value-names
2. opt -passes='mem2reg,loop-simplify,loop-rotate'
3. opt -load-pass-plugin=./build/libMyPass.so -passes="my-pass,loop-vectorize"
4. clang++ -O0 → binary

**Pipeline — without pass:**
1. Same steps 1–2
2. clang++ -O0 directly from canonical IR → binary

**Timing (single run):**
- With pass: 227 ms
- Without pass: 1149 ms
- Speedup: ~5.1x

**IR artifacts:** results/ir/
**Assembly artifacts:** results/assembly/

**Notes:**
- Original reported figures were 271ms / 1134ms from an earlier run
- Variation between runs is expected; rigorous multi-run timing is next
- runO3 (clang++ -O3 directly) clocks ~140ms for context

---

## Entry 2 — 30-run statistical benchmark

**Date:** 2026-10-18
**Git commit:** db6ad8b
**Benchmark:** 1000×1000 matrix addition, 1000 iterations (1 billion additions)
**Runs:** 30 per variant
**Correctness check:** C[500][500] = 251000 ✓ (both variants)

**Results:**

| Variant      | Median  | Min     | Max     | Stdev   |
|-------------|---------|---------|---------|---------|
| With pass   | 217 ms  | 213 ms  | 259 ms  | 10.53ms |
| Without pass| 1141 ms | 1135 ms | 1173 ms | 7.37ms  |

**Speedup:** 5.26x faster with pass
**Runtime reduction:** 81%

**Notes:**
- Run 1 of with-pass was 255ms (likely cache warmup), settled to ~215-220ms after
- Without-pass results highly stable across all 30 runs
- Single-run figures from Entry 1 (227ms / 1149ms) consistent with these medians
