#!/bin/sh

set -e
set -u
set -x

LUA_VERSION=5.3.0
LUA_SOURCE_ARCHIVE=lua-${LUA_VERSION}.tar.gz
LUA_SOURCE=lua-${LUA_VERSION}

dnf -y install tar make gcc readline-devel

curl http://www.lua.org/ftp/${LUA_SOURCE_ARCHIVE} > /${LUA_SOURCE_ARCHIVE}
tar zxf /${LUA_SOURCE_ARCHIVE} -C /
make -C /${LUA_SOURCE} linux test install INSTALL_TOP=/opt/lua

dnf -y remove tar make gcc readline-devel
dnf clean all
rm -rf /${LUA_SOURCE_ARCHIVE} /${LUA_SOURCE}
