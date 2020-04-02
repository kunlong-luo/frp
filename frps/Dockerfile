FROM centos

LABEL maintainer="TonyParkerLuo <luokl19970514@163.com>"

ENV FRP_VERSION="0.32.0" \
    ARCH="amd64" \
    FRP_DIR="/usr/bin" \
    FRP_CONF_DIR="/etc/frp" \
    WD="/tmp"

RUN cd $WD \
    && yum update -y \
    && yum install -y wget \
    && wget --no-check-certificate -c -P ${WD} https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_${ARCH}.tar.gz \
    && tar -zxvf frp_${FRP_VERSION}_linux_${ARCH}.tar.gz \
    && cd frp_${FRP_VERSION}_linux_${ARCH} \
    && cp frps ${FRP_DIR} \
    && mkdir -p ${FRP_CONF_DIR} \
    && cp frps.ini ${FRP_CONF_DIR} \
    && cd ${WD} \
    && rm -rf frp_${FRP_VERSION}_linux_${ARCH}/ \
    && rm frp_${FRP_VERSION}_linux_${ARCH}.tar.gz

ENTRYPOINT ${FRP_DIR}/frps -c ${FRP_CONF_DIR}/frps.ini