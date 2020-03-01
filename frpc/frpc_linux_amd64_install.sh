#!/usr/bin/bash

FRP_VERSION="0.31.2"
FRP_DIR="/usr/local/frpc"
SERVICE_DIR="/lib/systemd/system"
REPO="tony-parker-luo/frp"
WD="/tmp"

# create frpc directory
mkdir -p ${FRP_DIR}

# download frp package
wget -P ${WD} https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz && \
tar -zxvf frp_${FRP_VERSION}_linux_amd64.tar.gz && \
cd frp_${FRP_VERSION}_linux_amd64 && \
mv frpc frpc.ini ${FRP_DIR}

# download frpc.service
wget -P ${SERVICE_DIR} https://raw.githubusercontent.com/${REPO}/master/frpc/frpc.service
systemctl daemon-reload

# start frpc
sudo systemctl start frpc
sudo systemctl enable frpc

# delete redundant file
cd ${WD} && \
rm -rf frp_${FRP_VERSION}_linux_amd64 frp_${FRP_VERSION}_linux_amd64.tar.gz frpc_linux_install.sh
