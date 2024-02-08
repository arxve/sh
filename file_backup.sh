#!/bin/bash

echo "Enter file(s) to backup (separated by space):"
read files
echo "Enter backup directory:"
read backup_dir
cp $files $backup_dir
echo "Backup successful!"
