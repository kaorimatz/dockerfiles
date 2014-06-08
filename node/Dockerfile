FROM kaorimatz/fedora
MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all
RUN yum -y install v8 libuv http-parser c-ares

ADD install.sh /
RUN chmod +x /install.sh && /install.sh && rm /install.sh
