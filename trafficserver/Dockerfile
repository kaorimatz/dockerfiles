FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all
RUN yum -y install trafficserver && yum clean all

RUN systemctl enable trafficserver

EXPOSE 8080
