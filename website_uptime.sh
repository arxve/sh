#!/bin/bash

echo "Enter website URL:"
read url

# Check if a URL was provided
if [ -z "$url" ]; then
    echo "Error: Please enter a website URL."
    exit 1
fi

# Check if the URL is valid (simple pattern matching)
if ! [[ $url =~ ^(http|https)://[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,}(\/\S*)?$ ]]; then
    echo "Error: Invalid URL format. Please enter a valid URL."
    exit 1
fi

# Check if the website is reachable
if curl --output /dev/null --silent --head --fail "$url"; then
    echo "$url is up"
else
    echo "$url is down"
fi
