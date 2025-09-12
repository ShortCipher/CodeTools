#!/bin/bash

# Note: If you're missing "sponge" run this command:
# sudo apt install moreutils

# Find all C source and header files. Convert tabs to 8 spaces.
echo ""
echo "C Source and Header Files (*.c, *.h)"
echo "------------------------------------"
find . -type f -name "*.[c,h]" -print -exec sh -c 'expand -t8 "$1" | sponge "$1"' _ {} \+

# Find all C++ source and header files. Convert tabs to 8 spaces.
echo ""
echo "C++ Source and Header Files (*.cpp, *.hpp)"
echo "------------------------------------------"
find . -type f -name "*.[c,h]pp" -print -exec sh -c 'expand -t8 "$1" | sponge "$1"' _ {} \+

echo ""
echo "C++ Source and Header Files (*.cxx, *.hxx)"
echo "------------------------------------------"
find . -type f -name "*.[c,h]xx" -print -exec sh -c 'expand -t8 "$1" | sponge "$1"' _ {} \+

# Find all shell scripts. Convert tabs to 8 spaces.
echo ""
echo "Bash Script Files (*.sh)"
echo "------------------------"
find . -type f -name "*.sh" -print -exec sh -c 'expand -t8 "$1" | sponge "$1"' _ {} \+
