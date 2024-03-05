#!/bin/bash

# Prompt user for filename input
read -p "Enter file name: " filename

# Check if the filename is provided
if [ -z "$filename" ]; then
    echo "Error: Please enter a filename."
    exit 1
fi

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

# Count the number of words in the file
word_count=$(wc -w < "$filename")

echo "Word count in '$filename': $word_count"
