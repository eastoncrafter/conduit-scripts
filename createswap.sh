#!/bin/bash
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi
fallocate -l 8G /swapfile 
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
free -h
echo "/swapfile   none    swap    sw    0   0" >> /etc/fstab
exit