#!/usr/bin/bash

FRP_VERSION="0.31.2"
FRP_DIR="/usr/local/frps"
REPO="tony-parker-luo/frps"
WD="/tmp"

# create frps directory
mkdir -p ${FRP_DIR}

# download frp package
wget -P ${WD} https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz && \
tar -zxvf frp_${FRP_VERSION}_linux_amd64.tar.gz && \
cd frp_${FRP_VERSION}_linux_amd64 && \
mv frps frps.ini ${FRP_DIR}

# download frps.service
wget -P ${WD}
systemctl daemon-reload

# start frps
sudo systemctl start frps
sudo systemctl enable frps

# delete redundant file
cd ${WD} && \
rm -rf frp_${FRP_VERSION}_linux_amd64 frp_${FRP_VERSION}_linux_amd64.tar.gz frps_linux_install.sh
