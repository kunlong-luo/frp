#!/usr/bin/bash

FRP_VERSION="0.32.0"
ARCH="amd64"
FRP_DIR="/usr/bin"
FRP_CONF_DIR="/etc/frp"
SERVICE_DIR="/lib/systemd/system"
WD="/tmp"

# create frps directory
sudo mkdir -p ${FRP_CONF_DIR}

# download frp package
wget --no-check-certificate -c -P ${WD} https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_${ARCH}.tar.gz && \
tar -zxvf frp_${FRP_VERSION}_linux_${ARCH}.tar.gz && \
cd frp_${FRP_VERSION}_linux_${ARCH} && \
sudo cp frps ${FRP_DIR} && \
sudo cp frps.ini ${FRP_CONF_DIR} && \
sudo cp ${WD}/frp_${FRP_VERSION}_linux_${ARCH}/systemd/frps.service ${SERVICE_DIR} && \
sudo systemctl daemon-reload

# start frps
sudo systemctl start frps
sudo systemctl enable frps

# delete redundant file
cd ${WD} && \
rm -rf frp_${FRP_VERSION}_linux_${ARCH} frp_${FRP_VERSION}_linux_${ARCH}.tar.gz frps_linux_install.sh

echo "=======================================================" &&\
echo -e "\033[32mFRPS Install Success!\033[0m" && \
echo -e "\033[31mfrps: ${FRP_DIR}/frps\033[0m" && \
echo -e "\033[31mconf: ${FRP_CONF_DIR}/frps.ini\033[0m" && \
echo -e "\033[31mfrps.service: ${SERVICE_DIR}/frps.service\033[0m" && \
echo "======================================================="