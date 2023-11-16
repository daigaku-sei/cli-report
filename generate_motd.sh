#!/bin/bash

# Get current time
current_time=$(date +"%T")

# Get hostname
hostname=$(hostname)

# Get IP address
ip_address=$(ip addr show wlan0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

# Get distribution name
distribution=$(uname -a | awk '{print $2}')

# Get kernel version
kernel_version=$(uname -r)

# Get system boot time (uptime)
uptime=$(uptime -p)

# Get list of users
users=$(who | awk '{print $1}' | sort | uniq)

# Append the information to the motd file
echo "Hello, this is MOTD: CLI20, node06." >> $PREFIX/etc/motd
echo "Current time: $current_time" >> $PREFIX/etc/motd
echo "Hostname: $hostname" >> $PREFIX/etc/motd
echo "IP address: $ip_address" >> $PREFIX/etc/motd
echo "Distribution: $distribution" >> $PREFIX/etc/motd
echo "Kernel version: $kernel_version" >> $PREFIX/etc/motd
echo "System boot time (uptime): $uptime" >> $PREFIX/etc/motd
echo "List of users: $users" >> $PREFIX/etc/motd
