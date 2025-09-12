#!/bin/bash

# Find all C source and header files. Convert line endings to UNIX format.
echo ""
echo "C Source and Header Files (*.c, *.h)"
echo "------------------------------------"
find . -type f -name "*.[c,h]" -exec dos2unix -v -S {} +

# Find all C++ source and header files. Convert line endings to UNIX format.
echo ""
echo "C++ Source and Header Files (*.cpp, *.hpp)"
echo "------------------------------------------"
find . -type f -name "*.[c,h]pp" -exec dos2unix -v -S {} +

echo ""
echo "C++ Source and Header Files (*.cxx, *.hxx)"
echo "------------------------------------------"
find . -type f -name "*.[c,h]xx" -exec dos2unix -v -S {} +

# Find all shell script files. Convert line endings to UNIX format.
echo ""
echo "Bash Script Files (*.sh)"
echo "------------------------"
find . -type f -name "*.sh" -exec dos2unix -v -S {} +

# dos2unix options
# -v Verbose
# -S Skip symbolic links
