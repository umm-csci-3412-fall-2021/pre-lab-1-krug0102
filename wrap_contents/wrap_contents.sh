#!/bin/bash

#Finds all the necessary files and writes them to a new file with the name given.
cat "${2}_header".html "$1" "${2}_footer".html > "$3"
