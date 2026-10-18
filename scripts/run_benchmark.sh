#!/bin/bash

RESULTS_DIR="$(dirname "$0")/../results/raw"
mkdir -p "$RESULTS_DIR"

WITH_PASS="$RESULTS_DIR/with_pass.csv"
WITHOUT_PASS="$RESULTS_DIR/without_pass.csv"

echo "run_id,time_ms" > "$WITH_PASS"
echo "run_id,time_ms" > "$WITHOUT_PASS"

echo "Running 30 timed iterations..."

for i in $(seq 1 30); do
    T=$(./runWithPass2D | grep -E "^[0-9]+" | head -1)
    echo "$i,$T" >> "$WITH_PASS"

    T=$(./runWithoutPass2D | grep -E "^[0-9]+" | head -1)
    echo "$i,$T" >> "$WITHOUT_PASS"

    echo "Run $i done"
done

echo "Done. Results saved to $RESULTS_DIR"
