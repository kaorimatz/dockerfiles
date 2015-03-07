FROM kaorimatz/fedora

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all

ADD install.sh /
RUN chmod +x /install.sh && /install.sh && rm /install.sh
