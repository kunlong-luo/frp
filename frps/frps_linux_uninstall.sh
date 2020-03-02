#!/usr/bin/bash

# stop frps
sudo systemctl stop frps

# delete frps
sudo rm -rf /usr/bin/frps

# delete frps.service
sudo rm -rf /lib/systemd/system/frps.service

# delete frps.ini
sudo rm -rf /etc/frp

# delete this file
sudo rm -rf /tmp/frps_linux_uninstall.sh

echo -e "\033[32mFRPS Uninstall Success!\033[0m"