#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// Program to convert integers to their binary representation
int main(int argc, char *argv[])
{
	// Bitfield to check
	uint32_t bitfield = 42;

	// Usage message (if no arguments are provided).
	if (argc == 1) {
		printf("Usage: %s <num1> <num2> ...\n", argv[0]);
		return 1;
	}

	printf("Convert to Binary\n");
	printf("-----------------\n");

	// Process each command line argument
	for (int i = 1; i < argc; i++) {
		printf("%s\n", argv[i]);

		// Update bitfield value from command line argument
		bitfield = atoi(argv[i]);

		// Print binary representation
		for (int j = 31; j >= 0; j--) {
			printf("%d", (bitfield >> j) & 1);
			// Add space every 8 bits for readability
			if (j % 8 == 0 && j != 0) {
				printf(" ");
			}
		}
		printf("\n");

		#ifdef DEBUG
		printf("Hex: 0x%X\n", bitfield);
		printf("Int: %u\n", bitfield);
		// Check and print which bits are set
		for (int i = 0; i < 32; i++) {
			if (bitfield & (1 << i)) {
				printf("Bit %d is set\n", i);
			}
		}
		printf("\n");
		#endif
	}

	return 0;
}
