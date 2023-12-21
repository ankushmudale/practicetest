#!/bin/bash
# Check if a filename is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi
# Assign the filename from the command line argument
filename=$1
# Check if the file exists
if [ ! -e "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi
# Use the 'wc' command to count lines in the file
line_count=$(wc -l < "$filename")

# Display the result
echo "The file '$filename' has $line_count lines."

