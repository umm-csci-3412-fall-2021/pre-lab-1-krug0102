#!/usr/bin/env bash

#Script that only prints desired content into a new text file.

#Matches pattern based on the comma
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

#Only looks at lines whose first sentence starts with "* I am..." and whose
# second line starts with "My favorite sandwich is..."
sed -E 's/\* I am ([a-zA-Z]+)\. My favorite sandwich is ([a-z]+)\./1. \1\n2. \2\n/;t;d' <r1_input.txt > r1_output.txt

#Takes the following string (including .) following "* sandwich with ..." and the
# rest of the line following the period.
sed -E 's/\* sandwich with ([a-zA-Z\.]+) ([a-zA-Z ]+)/1. \1\n2. \2\n/' < r2_input.txt > r2_output.txt
