#!/bin/sh

set -e
set -u
set -x

NODE_VERSION=0.10.28
NODE_SOURCE_ARCHIVE=node-v${NODE_VERSION}.tar.gz
NODE_SOURCE=node-v${NODE_VERSION}

dnf -y install tar gcc make gcc-c++ libuv-devel v8-devel c-ares-devel zlib-devel http-parser-devel openssl-devel

curl http://nodejs.org/dist/v0.10.28/${NODE_SOURCE_ARCHIVE} > /${NODE_SOURCE_ARCHIVE}
tar zxf /${NODE_SOURCE_ARCHIVE} -C /
(cd /${NODE_SOURCE} &&
  ./configure \
  --prefix=/opt/node \
  --shared-v8 \
  --shared-openssl \
  --shared-zlib \
  --shared-http-parser \
  --shared-cares \
  --shared-libuv
)
make -C /${NODE_SOURCE} install

dnf -y remove tar gcc make gcc-c++ libuv-devel v8-devel c-ares-devel zlib-devel http-parser-devel openssl-devel
dnf clean all
rm -rf /${NODE_SOURCE_ARCHIVE} /${NODE_SOURCE}
