#!/bin/bash

echo "Enter URL to shorten:"
read long_url

# Check if a URL was provided
if [ -z "$long_url" ]; then
    echo "Error: Please enter a URL to shorten."
    exit 1
fi

# Check if the URL is valid (simple pattern matching)
if ! [[ $long_url =~ ^(http|https)://[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,}(\/\S*)?$ ]]; then
    echo "Error: Invalid URL format. Please enter a valid URL."
    exit 1
fi

# Shorten the URL using is.gd service
short_url=$(curl -s "https://is.gd/create.php?format=simple&url=$long_url")

# Check if the shortening service responded successfully
if [ -z "$short_url" ]; then
    echo "Error: Failed to shorten the URL. Please try again later."
    exit 1
fi

echo "Shortened URL:"
echo "$short_url"
