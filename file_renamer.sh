#!/bin/bash

echo "Enter prefix:"
read prefix
echo "Enter file extension (e.g., txt):"
read extension

# Check if any files with the specified extension exist
files_exist=$(ls -1 *.$extension 2>/dev/null | wc -l)
if [ $files_exist -eq 0 ]; then
    echo "No files found with the extension .$extension in the current directory."
    exit 1
fi

echo "Renaming files..."
for file in *.$extension; do
    new_name="$prefix$file"
    if [ -e "$new_name" ]; then
        echo "A file with the name '$new_name' already exists. Skipping."
    else
        mv "$file" "$new_name"
        echo "Renamed '$file' to '$new_name'"
    fi
done
