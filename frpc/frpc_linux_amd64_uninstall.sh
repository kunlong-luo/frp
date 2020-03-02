#!/usr/bin/bash

# stop frpc
sudo systemctl stop frpc

# delete frpc
sudo rm -rf /usr/bin/frpc

# delete frpc.service
sudo rm -rf /lib/systemd/system/frpc.service

# delete frpc.ini
sudo rm -rf /etc/frp

# delete this file
sudo rm -rf /tmp/frpc_linux_amd64_uninstall.sh

