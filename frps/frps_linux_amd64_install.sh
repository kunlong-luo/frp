#!/usr/bin/bash

FRP_VERSION="0.31.2"
FRP_DIR="/usr/bin/"
FRP_CONF_DIR="/etc/frp/"
SERVICE_DIR="/lib/systemd/system"
WD="/tmp"

# create frps directory
sudo mkdir -p ${FRP_CONF_DIR}

# download frp package
wget -P ${WD} https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz && \
tar -zxvf frp_${FRP_VERSION}_linux_amd64.tar.gz && \
cd frp_${FRP_VERSION}_linux_amd64 && \
sudo cp frps ${FRP_DIR} && \
sudo cp frps.ini ${FRP_CONF_DIR} && \
sudo cp ./system/frps.service ${SERVICE_DIR} && \
sudo systemctl daemon-reload

# start frps
sudo systemctl start frps
sudo systemctl enable frps

# delete redundant file
cd ${WD} && \
rm -rf frp_${FRP_VERSION}_linux_amd64 frp_${FRP_VERSION}_linux_amd64.tar.gz frps_linux_amd64_install.sh
