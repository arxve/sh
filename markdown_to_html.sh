#!/bin/bash

echo "Enter Markdown file name:"
read markdown_file
pandoc -s $markdown_file -o output.html
echo "Conversion complete. HTML file saved as output.html"
