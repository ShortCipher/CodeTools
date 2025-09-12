#!/bin/bash

# Find all C source and header files. Remove trailing whitespace on each line.
echo ""
echo "C Source and Header Files (*.c, *.h)"
echo "------------------------------------"
find . -type f -name '*.[c,h]' -print -exec sed --in-place 's/[[:space:]]\+$//' {} \+

# Find all C++ source and header files. Remove trailing whitespace on each line.
echo ""
echo "C++ Source and Header Files (*.cpp, *.hpp)"
echo "------------------------------------------"
find . -type f -name '*.[c,h]pp' -print -exec sed --in-place 's/[[:space:]]\+$//' {} \+

echo ""
echo "C++ Source and Header Files (*.cxx, *.hxx)"
echo "------------------------------------------"
find . -type f -name '*.[c,h]xx' -print -exec sed --in-place 's/[[:space:]]\+$//' {} \+

# Find all shell scripts. Remove trailing whitespace on each line.
echo ""
echo "Bash Script Files (*.sh)"
echo "------------------------"
find . -type f -name '*.sh' -print -exec sed --in-place 's/[[:space:]]\+$//' {} \+
