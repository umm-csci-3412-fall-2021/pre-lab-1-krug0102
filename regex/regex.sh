#!/bin/bash

iname=$(basename "$1" input.txt)

fname="${iname}output.txt"

#creates a .txt file with the correct name.
>"$fname"


