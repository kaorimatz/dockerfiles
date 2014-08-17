FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all
RUN yum -y install memcached && yum clean all

RUN systemctl enable memcached

EXPOSE 11211
