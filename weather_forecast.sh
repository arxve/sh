#!/bin/bash

echo "Enter your city:"
read city
curl wttr.in/$city
