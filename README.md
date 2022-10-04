# frp

## introduction
Intranet penetration server and client installation scripts based on original [frp](https://github.com/fatedier/frp).

## frp server installation
+ script install
```bash
wget https://raw.githubusercontent.com/tony-parker-luo/frp/master/frps/frps_linux_install.sh && \
chmod +x frps_linux_install.sh && \
./frps_linux_install.sh
```

+ script uninstall
```bash
wget https://raw.githubusercontent.com/tony-parker-luo/frp/master/frps/frps_linux_uninstall.sh && \
chmod +x frps_linux_uninstall.sh && \
./frps_linux_uninstall.sh
```

## frp client installation
+ script install
```bash
wget https://raw.githubusercontent.com/tony-parker-luo/frp/master/frpc/frpc_linux_install.sh && \
chmod +x frpc_linux_install.sh && \
./frpc_linux_install.sh
```
+ script uninstall
```bash
wget https://raw.githubusercontent.com/tony-parker-luo/frp/master/frpc/frpc_linux_uninstall.sh && \
chmod +x frpc_linux_uninstall.sh && \
./frpc_linux_uninstall.sh
```


## frp server installation with Docker
```bash
docker pull tonyparker/frps
docker run --name frps --restart=always --network host -d -v frps:/etc/frp tonyparker/frps
```

## frp client installation with Docker
```bash
docker pull tonyparker/frpc
docker run --name frpc --restart=always --network host -d -v frpc:/etc/frp tonyparker/frpc
```



