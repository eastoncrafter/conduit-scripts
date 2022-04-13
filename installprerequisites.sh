#!/bin/bash
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi
apt install libclang-dev build-essential -y
apt install curl wget git -y
apt install net-tools -y
cd ~
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#Proceed with install using default options.  Script will add  $HOME/.cargo/env to your .profile, so ’source’ it after install finishes….
exit