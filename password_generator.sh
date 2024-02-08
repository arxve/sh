#!/bin/bash

echo "Enter password length:"
read length
tr -dc A-Za-z0-9_ < /dev/urandom | head -c $length | xargs
