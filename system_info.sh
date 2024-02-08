#!/bin/bash

echo "System Information:"
echo "-------------------"
echo "CPU Info:"
cat /proc/cpuinfo | grep "model name" | uniq
echo "Memory Info:"
free -h
echo "Disk Usage:"
df -h
