#!/bin/bash
filename='packages.txt'

# Check for root
if [ "$EUID" -ne 0 ]
    then echo "Please run this script as root"
    exit
fi

# Update packet repo
pacman -Syu

while read -r line; do
    # reading each line
    echo "Installing $line"
    pacman -S "$line"
done < $filename
