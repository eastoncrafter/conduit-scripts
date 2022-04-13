#!/bin/bash
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi
apt install libclang-dev build-essential -y
apt install curl wget git -y
apt install net-tools -y

exit