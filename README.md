Script to install conduit on debian (and alike) systems; Run the script in this order
createswap.sh (run as root)
installprerequisites.sh(run as root)  (when prompted answer 1)
cloneandbuild.sh
install-as-service.sh (run as root)
configure your /etc/matrix-conduit/conduit.toml with the hostname of you server like matrix.yourdomain.com
When done editing /etc/matrix-conduit/conduit.toml, run the following
sudo systemctl daemon-reload
systemctl start conduit
