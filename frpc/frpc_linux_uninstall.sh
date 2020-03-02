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
sudo rm -rf /tmp/frpc_linux_uninstall.sh

echo -e "\033[32mFRPC Uninstall Success!\033[0m"