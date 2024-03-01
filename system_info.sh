#!/bin/bash

echo "System Information:"
echo "-------------------"

echo "CPU Info:"
echo "---------"
cat /proc/cpuinfo | grep "model name" | uniq

echo -e "\nMemory Info:"
echo "------------"
free -h

echo -e "\nDisk Usage:"
echo "-----------"
df -h

echo -e "\nSystem Uptime:"
echo "--------------"
uptime

echo -e "\nNetwork Interfaces:"
echo "-------------------"
ip addr show
