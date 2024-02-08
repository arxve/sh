#!/bin/bash

echo "Enter website URL:"
read url
if curl --output /dev/null --silent --head --fail "$url"; then
  echo "$url is up"
else
  echo "$url is down"
fi
