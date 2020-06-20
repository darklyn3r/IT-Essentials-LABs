#!/bin/bash
echo "Computer name is: " $HOSTNAME
echo "Operating System is:"
cat /etc/os-release | grep PRETTY_NAME
echo "CPU is"
lscpu | grep "Model name:" | sed -r 's/Model name:\s{1,}//g'
echo "Total Memory is"
cat /proc/meminfo | grep "MemTotal"
echo "The disks that are installed and their freespace"
df -h
echo "All the" $HOSTNAME "IP addresses"
hostname -I
