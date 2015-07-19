#!/bin/sh

set -e
set -u
set -x

ERLANG_VERSION=18.0
ERLANG_SOURCE_ARCHIVE=otp_src_${ERLANG_VERSION}.tar.gz
ERLANG_SOURCE=otp_src_${ERLANG_VERSION}

dnf -y install tar gcc make perl ncurses-devel openssl-devel

curl http://www.erlang.org/download/${ERLANG_SOURCE_ARCHIVE} > /${ERLANG_SOURCE_ARCHIVE}
tar zxf /${ERLANG_SOURCE_ARCHIVE} -C /
(cd /${ERLANG_SOURCE} && ./configure --prefix=/opt/erlang)
make -C /${ERLANG_SOURCE} install

dnf -y remove tar gcc make perl ncurses-devel openssl-devel
dnf clean all
rm -rf /${ERLANG_SOURCE_ARCHIVE} /${ERLANG_SOURCE}
