#include <stdio.h>

int main() {
	int n = 10;
	for (int i = 0; i < n; i++) {
		loop_header:
		printf("%d\n", i);
	}
	return 0;
}
