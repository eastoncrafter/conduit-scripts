#!/bin/bash
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi
#create the conduit user
adduser --system conduit --no-create-home
#create the conduit service
echo "[Unit]

Description=Conduit Matrix Server

After=network.target

[Service]

Environment="CONDUIT_CONFIG=/etc/matrix-conduit/conduit.toml"

User=conduit

Group=nogroup

Restart=always

ExecStart=/usr/local/bin/matrix-conduit

[Install]

WantedBy=multi-user.target

" | tee /etc/systemd/system/conduit.service
#reload everything multiple times because why not
systemctl daemon-reload
systemctl enable conduit
systemctl start conduit
cp target/release/conduit /usr/local/lib/matrix-conduit
mkdir /var/lib/matrix-conduit
systemctl daemon-reload
systemctl start conduit