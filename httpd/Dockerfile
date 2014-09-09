FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all
RUN yum -y install httpd && yum clean all

ADD disable-privatetmp.conf /etc/systemd/system/httpd.service.d/

RUN systemctl enable httpd

EXPOSE 80/tcp
