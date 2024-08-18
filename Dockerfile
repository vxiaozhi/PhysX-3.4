FROM ubuntu:18.04
MAINTAINER vxiaozhi
LABEL Description="docker for run PhysX" Version="latest"

ENV TZ=Asia/Shanghai

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime

RUN echo $TZ > /etc/timezone

RUN apt-get update --allow-unauthenticated --allow-insecure-repositories && \
    apt-get install -y linux-source  linux-tools-generic linux-cloud-tools-generic linux-tools-common \
    openssh-client telnet netcat net-tools pkg-config zip g++ zlib1g-dev unzip  \ 
    vim  tcpdump curl gdb tzdata  && \ 
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

