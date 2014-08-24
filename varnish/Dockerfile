FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all
RUN yum -y install varnish && yum clean all

ADD disable-privatetmp.conf /etc/systemd/system/varnish.service.d/

RUN systemctl enable varnish

EXPOSE 6081
