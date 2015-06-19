FROM kaorimatz/erlang

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all

ADD install.sh /
RUN chmod +x /install.sh && /install.sh && rm /install.sh
