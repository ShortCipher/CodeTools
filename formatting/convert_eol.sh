#!/bin/bash

# Find all C source and header files. Convert line endings to UNIX format.
dos2unix `find . -type f -name '*.[c,h]'`

# Find all C++ source and header files. Convert line endings to UNIX format.
dos2unix `find . -type f -name '*.[c,h]pp'`
dos2unix `find . -type f -name '*.[c,h]xx'`

# Find all shell script files. Convert line endings to UNIX format.
dos2unix `find . -type f -name '*.sh'`
