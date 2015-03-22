#!/bin/sh

set -e
set -u
set -x

RUST_VERSION=1.0.0-alpha.2
RUST_SOURCE_ARCHIVE=rustc-${RUST_VERSION}-src.tar.gz
RUST_SOURCE=rustc-${RUST_VERSION}

yum -y install tar file make gcc gcc-c++

curl -L http://static.rust-lang.org/dist/${RUST_SOURCE_ARCHIVE} > /${RUST_SOURCE_ARCHIVE}
tar zxf /${RUST_SOURCE_ARCHIVE} -C /
(cd /${RUST_SOURCE} && ./configure --prefix=/opt/rust --disable-docs)
make -C ${RUST_SOURCE} install
cat <<EOF > /etc/ld.so.conf.d/rust.conf
/opt/rust/lib
EOF
ldconfig

yum -y autoremove tar file make gcc gcc-c++
yum clean all
rm -rf /${RUST_SOURCE_ARCHIVE} /${RUST_SOURCE}
