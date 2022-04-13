#!/bin/bash
cd ~
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#Proceed with install using default options.  Script will add  $HOME/.cargo/env to your .profile, so ’source’ it after install finishes….
source ~/.profile
source $HOME/.cargo/env
source ~/.bashrc
cd ~
mkdir build
cd build/
git clone https://gitlab.com/famedly/conduit
cd conduit/
rustup default nightly
#Now we start the build…
cargo build --release
 