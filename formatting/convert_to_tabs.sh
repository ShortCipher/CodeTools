#!/bin/bash

# Note: If you're missing "sponge" run this command:
# sudo apt install moreutils

# Find all C source and header files. Convert 8 spaces to a tab (only at the start of a line).
echo ""
echo "C Source and Header Files (*.c, *.h)"
echo "------------------------------------"
for source_file in $(find . -type f -name "*.[c,h]"); do
	unexpand -t8 --first-only "$source_file" | sponge "$source_file"
done

# Find all C++ source and header files. Convert 8 spaces to a tab (only at the start of a line).
echo ""
echo "C++ Source and Header Files (*.cpp, *.hpp)"
echo "------------------------------------------"
for source_file in $(find . -type f -name "*.[c,h]pp"); do
	unexpand -t8 --first-only "$source_file" | sponge "$source_file"
done

echo ""
echo "C++ Source and Header Files (*.cxx, *.hxx)"
echo "------------------------------------------"
for source_file in $(find . -type f -name "*.[c,h]xx"); do
	unexpand -t8 --first-only "$source_file" | sponge "$source_file"
done

# Find all shell scripts. Convert 8 spaces to a tab (only at the start of a line).
echo ""
echo "Bash Script Files (*.sh)"
echo "------------------------"
for source_file in $(find . -type f -name "*.sh"); do
	unexpand -t8 --first-only "$source_file" | sponge "$source_file"
done
