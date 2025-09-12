#!/bin/bash

# Find all C source and header files. Convert line endings to UNIX format.
echo ""
echo "C Source and Header Files (*.c, *.h)"
echo "------------------------------------"
find . -type f -name "*.[c,h]" | while read -r source_file; do
	dos2unix -v -S "$source_file"
done

# Find all C++ source and header files. Convert line endings to UNIX format.
echo ""
echo "C++ Source and Header Files (*.cpp, *.hpp)"
echo "------------------------------------------"
find . -type f -name "*.[c,h]pp" | while read -r source_file; do
	dos2unix -v -S "$source_file"
done

echo ""
echo "C++ Source and Header Files (*.cxx, *.hxx)"
echo "------------------------------------------"
find . -type f -name "*.[c,h]xx" | while read -r source_file; do
	dos2unix -v -S "$source_file"
done

# Find all shell script files. Convert line endings to UNIX format.
echo ""
echo "Bash Script Files (*.sh)"
echo "------------------------"
find . -type f -name "*.sh" | while read -r source_file; do
	dos2unix -v -S "$source_file"
done

# dos2unix options
# -v Verbose
# -S Skip symbolic links
