#!/bin/bash

echo "Password Length (at least 8 characters):"
read length

# Check if the length entered is a valid number
if ! [[ "$length" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid number for password length."
    exit 1
fi

# Check if the length is at least 8 characters
if [ "$length" -lt 8 ]; then
    echo "Error: Password length must be at least 8 characters."
    exit 1
fi

echo "Include special characters? (y/n):"
read include_special

if [ "$include_special" = "y" ]; then
    tr -dc '[:graph:]' < /dev/urandom | head -c "$length"
else
    tr -dc 'A-Za-z0-9' < /dev/urandom | head -c "$length"
fi
echo
