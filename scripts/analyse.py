import statistics
import csv

def load(path):
	times = []
	with open(path) as f:
		reader = csv.DictReader(f)
		for row in reader:
			times.append(int(row["time_ms"]))
	return times

with_pass = load("results/raw/with_pass.csv")
without_pass = load("results/raw/without_pass.csv")

wp_median = statistics.median(with_pass)
wop_median = statistics.median(without_pass)

print("=== With Pass ===")
print(f"  Median:  {wp_median} ms")
print(f"  Min:     {min(with_pass)} ms")
print(f"  Max:     {max(with_pass)} ms")
print(f"  Stdev:   {statistics.stdev(with_pass):.2f} ms")

print("\n=== Without Pass ===")
print(f"  Median:  {wop_median} ms")
print(f"  Min:     {min(without_pass)} ms")
print(f"  Max:     {max(without_pass)} ms")
print(f"  Stdev:   {statistics.stdev(without_pass):.2f} ms")

print(f"\n=== Speedup ===")
print(f"  {wop_median / wp_median:.2f}x faster with pass")
print(f"  {100 * (wop_median - wp_median) / wop_median:.1f}% reduction in runtime")
