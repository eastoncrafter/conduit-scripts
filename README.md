This is a script to install conduit on debian (and alike) systems; Run the script in this order


createswap.sh (run as root)

installprerequisites.sh(run as root)  (when prompted answer 1)

install-rust.sh

build.sh

install-as-service.sh (run as root)

Now to configure everything:
configure your /etc/matrix-conduit/conduit.toml with the hostname of you server like matrix.yourdomain.com
When done editing /etc/matrix-conduit/conduit.toml, run the following to make sure everything works
sudo systemctl daemon-reload
systemctl start conduit
