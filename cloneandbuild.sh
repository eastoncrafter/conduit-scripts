#!/bin/bash
source ~/.profile
cd ~
mkdir build
cd build/
git clone https://gitlab.com/famedly/conduit
cd conduit/
rustup default nightly
#Now we start the build…
cargo build --release
 