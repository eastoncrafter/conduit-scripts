#!/bin/bash
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi
#the required libraries and build tools for cargo
apt install libclang-dev build-essential -y
#get the good stuff
apt install curl wget git -y
#because its a good tool
apt install net-tools -y

exit