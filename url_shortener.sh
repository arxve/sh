#!/bin/bash

echo "Enter URL to shorten:"
read long_url
curl -s https://is.gd/create.php\?format\=simple\&url\=$long_url
