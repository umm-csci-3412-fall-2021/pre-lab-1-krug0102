#!/bin/bash

iname=$(basename "$1" input.txt)

fname="${iname}output.txt"

#creates a .txt file with the correct name.
>"$fname"

awk 'match($0, /([a-zA-Z]+), ([a-zA-Z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" > "$fname" }' < "$1"

