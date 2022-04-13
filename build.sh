cd ~
mkdir build
cd build/
#clone the repo
git clone https://gitlab.com/famedly/conduit

cd conduit/
git pull
rustup default nightly
#Now we start the build :)
cargo build --release