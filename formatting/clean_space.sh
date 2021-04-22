#!/bin/bash

# Find all C source and header files. Remove trailing whitespace on each line.
find . -type f -name '*.[c,h]' -exec sed --in-place 's/[[:space:]]\+$//' {} \+

# Find all shell scripts. Remove trailing whitespace on each line.
find . -type f -name '*.sh' -exec sed --in-place 's/[[:space:]]\+$//' {} \+
