#!/bin/bash

# Find all C source and header files. Convert line endings to UNIX format.
echo ""
echo "C Source and Header Files (*.c, *.h)"
echo "------------------------------------"
for source_file in `find . -type f -name "*.[c,h]"`; do
	dos2unix -v -S $source_file
done

# Find all C++ source and header files. Convert line endings to UNIX format.
echo ""
echo "C++ Source and Header Files (*.cpp, *.hpp)"
echo "------------------------------------------"
for source_file in `find . -type f -name "*.[c,h]pp"`; do
	dos2unix -v -S $source_file
done

echo ""
echo "C++ Source and Header Files (*.cxx, *.hxx)"
echo "------------------------------------------"
for source_file in `find . -type f -name "*.[c,h]xx"`; do
	dos2unix -v -S $source_file
done

# Find all shell script files. Convert line endings to UNIX format.
echo ""
echo "Bash Script Files (*.sh)"
echo "------------------------"
for source_file in `find . -type f -name "*.sh"`; do
	dos2unix -v -S $source_file
done

# dos2unix options
# -v Verbose
# -S Skip symbolic links
