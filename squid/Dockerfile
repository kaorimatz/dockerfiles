FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all
RUN yum -y install squid && yum clean all

RUN systemctl enable squid

EXPOSE 3128
