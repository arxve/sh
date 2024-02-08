#!/bin/bash

echo "Enter prefix:"
read prefix
echo "Enter file extension (e.g., txt):"
read extension
echo "Renaming files..."
for file in *.$extension; do
  mv "$file" "$prefix$file"
done
