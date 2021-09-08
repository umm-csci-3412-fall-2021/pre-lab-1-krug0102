#!/bin/bash

#Finds all the necessary files and writes them to a new file with the name given.
#Where "${2}_header" is the correct header html file, "$1" is the text file to be
#wrapped, and "${2}_footer" is the correct footer html file.
cat "${2}_header".html "$1" "${2}_footer".html > "$3"
