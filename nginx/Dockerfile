FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all
RUN yum -y install nginx && yum clean all

ADD disable-privatetmp.conf /etc/systemd/system/nginx.service.d/

RUN systemctl enable nginx

EXPOSE 80/tcp
