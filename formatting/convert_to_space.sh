#!/bin/bash

# Note: If you're missing "sponge" run this command:
# sudo apt install moreutils

# Find all C source and header files. Convert tabs to 8 spaces.
echo ""
echo "C Source and Header Files (*.c, *.h)"
echo "------------------------------------"
for source_file in `find . -type f -name "*.[c,h]"`; do
	expand -t8 $source_file | sponge $source_file
done

# Find all C++ source and header files. Convert tabs to 8 spaces.
echo ""
echo "C++ Source and Header Files (*.cpp, *.hpp)"
echo "------------------------------------------"
for source_file in `find . -type f -name "*.[c,h]pp"`; do
	expand -t8 $source_file | sponge $source_file
done

echo ""
echo "C++ Source and Header Files (*.cxx, *.hxx)"
echo "------------------------------------------"
for source_file in `find . -type f -name "*.[c,h]xx"`; do
	expand -t8 $source_file | sponge $source_file
done

# Find all shell scripts. Convert tabs to 8 spaces.
echo ""
echo "Bash Script Files (*.sh)"
echo "------------------------"
for source_file in `find . -type f -name "*.sh"`; do
	expand -t8 $source_file | sponge $source_file
done
