#!/bin/bash

echo "Enter file name:"
read filename

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

# Count the number of words in the file
word_count=$(wc -w < "$filename")

echo "Word count: $word_count"
