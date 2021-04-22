#!/bin/bash

# Note: If you're missing "sponge" run this command:
# sudo apt install moreutils

# Find all C source and header files. Convert 4 spaces to a tab.
for source_file in `find -type f -name "*.[c,h]"`; do
	unexpand -t4 --first-only $source_file | sponge $source_file
done

# Find all shell scripts. Convert 4 spaces to a tab.
for source_file in `find -type f -name "*.sh"`; do
	unexpand -t4 --first-only $source_file | sponge $source_file
done
