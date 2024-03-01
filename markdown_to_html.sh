#!/bin/bash

# Check if Pandoc is installed
if ! command -v pandoc &>/dev/null; then
    echo "Pandoc is not installed. Please install Pandoc and try again."
    exit 1
fi

echo "Enter Markdown file name:"
read markdown_file

# Check if the Markdown file exists
if [ ! -f "$markdown_file" ]; then
    echo "Markdown file '$markdown_file' does not exist. Exiting."
    exit 1
fi

# Perform Markdown to HTML conversion
output_file="output.html"
pandoc -s "$markdown_file" -o "$output_file"

# Check if the conversion was successful
if [ $? -eq 0 ]; then
    echo "Conversion complete. HTML file saved as $output_file"
else
    echo "Conversion failed. Please check the Markdown file and try again."
fi
