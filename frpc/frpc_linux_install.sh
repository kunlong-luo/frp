#!/usr/bin/bash

FRP_VERSION="0.31.2"
ARCH="amd64"
FRP_DIR="/usr/bin/"
FRP_CONF_DIR="/etc/frp/"
SERVICE_DIR="/lib/systemd/system"
WD="/tmp"

# create frp config directory
sudo mkdir -p ${FRP_CONF_DIR}

# download frp package
wget -P ${WD} https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_${ARCH}.tar.gz && \
tar -zxvf frp_${FRP_VERSION}_linux_${ARCH}.tar.gz && \
cd frp_${FRP_VERSION}_linux_${ARCH} && \
sudo cp frpc ${FRP_DIR} && \
sudo cp frpc.ini ${FRP_CONF_DIR} && \
sudo cp ${WD}/frp_${FRP_VERSION}_linux_${ARCH}/frpc.service ${SERVICE_DIR} && \
sudo systemctl daemon-reload

# start frpc
sudo systemctl start frpc
sudo systemctl enable frpc

# delete redundant file
cd ${WD} && \
rm -rf frp_${FRP_VERSION}_linux_${ARCH} frp_${FRP_VERSION}_linux_${ARCH}.tar.gz frpc_linux_install.sh
