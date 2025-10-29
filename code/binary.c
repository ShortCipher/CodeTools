#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// Program to convert integers to their binary representation
int main(int argc, char *argv[])
{
	// Map (bitfield) to check
	uint32_t map = 42;

	// Usage message (if no arguments are provided).
	if (argc == 1) {
		printf("Usage: %s <number1> <number2> ...\n", argv[0]);
		return 1;
	}

	// Process each command line argument
	for (int i = 1; i < argc; i++) {
		printf("Convert to Binary: %s\n", argv[i]);

		// Update map value from command line argument
		map = atoi(argv[i]);

		// Print binary representation
		for (int j = 31; j >= 0; j--) {
			printf("%d", (map >> j) & 1);
			// Add space every 8 bits for readability
			if (j % 8 == 0 && j != 0) {
				printf(" ");
			}
		}
		printf("\n");

	#ifdef DEBUG
		printf("Debug: map value is %u\n", map);
		// Check and print which bits are set
		for (int i = 0; i < 32; i++) {
			if (map & (1 << i)) {
				printf("Bit %d is set\n", i);
			}
		}
	#endif

	}

	return 0;
}
