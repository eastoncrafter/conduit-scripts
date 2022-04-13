#!/bin/bash
cd ~
#getting rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#Proceed with install using default options.  Script will add  $HOME/.cargo/env to your .profile, so ’source’ it after install finishes….
#work in progress, trying to get rustup and cargo commands to work without restarting the shell.
source ~/.profile
source $HOME/.cargo/env
source ~/.bashrc
cd ~
mkdir build
cd build/
#clone the repo
git clone https://gitlab.com/famedly/conduit
cd conduit/
rustup default nightly
#Now we start the build :)
cargo build --release
 