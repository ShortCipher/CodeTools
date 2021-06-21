#!/bin/bash

# Note: If you're missing "sponge" run this command:
# sudo apt install moreutils

# Find all C source and header files. Convert 8 spaces to a tab (only at the start of a line).
for source_file in `find . -type f -name "*.[c,h]"`; do
	unexpand -t8 --first-only $source_file | sponge $source_file
done

# Find all shell scripts. Convert 8 spaces to a tab (only at the start of a line).
for source_file in `find . -type f -name "*.sh"`; do
	unexpand -t8 --first-only $source_file | sponge $source_file
done
