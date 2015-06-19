FROM kaorimatz/fedora

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install v8 libuv http-parser c-ares && dnf clean all

ADD install.sh /
RUN chmod +x /install.sh && /install.sh && rm /install.sh
