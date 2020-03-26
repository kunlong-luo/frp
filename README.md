# frp

## 项目介绍
基于原版 [fatedier/frp](https://github.com/fatedier/frp) frp 内网穿透服务端 frps 和客户端 frpc 安装脚本。 

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
docker pull tony-parker-luo/frps
```

## frp client installation with Docker
```bash
docker pull tony-parker-luo/frpc
```



