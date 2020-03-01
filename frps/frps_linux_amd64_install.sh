#!/usr/bin/bash

FRP_VERSION="0.31.2"
FRP_DIR="/usr/local/frps"
SERVICE_DIR="/lib/systemd/system"
REPO="tony-parker-luo/frp"
WD="/tmp"

# create frps directory
mkdir -p ${FRP_DIR}

# download frp package
wget -P ${WD} https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz && \
tar -zxvf frp_${FRP_VERSION}_linux_amd64.tar.gz && \
cd frp_${FRP_VERSION}_linux_amd64 && \
mv frps frps.ini ${FRP_DIR}

# download frps.service
wget -P ${SERVICE_DIR} https://raw.githubusercontent.com/${REPO}/master/frps/frps.service
systemctl daemon-reload

# start frps
sudo systemctl start frps
sudo systemctl enable frps

# delete redundant file
cd ${WD} && \
rm -rf frp_${FRP_VERSION}_linux_amd64 frp_${FRP_VERSION}_linux_amd64.tar.gz frps_linux_install.sh
