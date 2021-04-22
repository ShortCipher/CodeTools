#!/bin/bash

# Note: If you're missing "sponge" run this command:
# sudo apt install moreutils

# Find all C source and header files. Convert tabs to 4 spaces.
for source_file in `find -type f -name "*.[c,h]"`; do
	expand -t4 $source_file | sponge $source_file
done

# Find all shell scripts. Convert tabs to 4 spaces.
for source_file in `find -type f -name "*.sh"`; do
	expand -t4 $source_file | sponge $source_file
done
