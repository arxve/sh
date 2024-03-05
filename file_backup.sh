#!/bin/bash

echo "Enter file(s) to backup (separated by space):"
read files

# Check if any files were provided
if [ -z "$files" ]; then
    echo "No files specified. Exiting."
    exit 1
fi

# Check if the specified files exist
for file in $files; do
    if [ ! -f "$file" ]; then
        echo "File '$file' does not exist. Exiting."
        exit 1
    fi
done

echo "Enter backup directory:"
read backup_dir

# Check if the backup directory exists
if [ ! -d "$backup_dir" ]; then
    echo "Backup directory '$backup_dir' does not exist. Creating it..."
    mkdir -p "$backup_dir"
fi

# Perform backup
cp $files $backup_dir

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup successful!"
else
    echo "Backup failed. Please check the file permissions and try again."
fi
