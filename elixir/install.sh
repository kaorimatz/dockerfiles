#!/bin/sh

set -e
set -u
set -x

ELIXIR_VERSION=1.2.5
ELIXIR_SOURCE_ARCHIVE=v${ELIXIR_VERSION}.tar.gz
ELIXIR_SOURCE=elixir-${ELIXIR_VERSION}

dnf -y install tar make

curl -L https://github.com/elixir-lang/elixir/archive/${ELIXIR_SOURCE_ARCHIVE} > /${ELIXIR_SOURCE_ARCHIVE}
tar zxf /${ELIXIR_SOURCE_ARCHIVE} -C /
make -C ${ELIXIR_SOURCE} install LANG=en_US.utf8 PATH=/opt/erlang/bin:$PATH PREFIX=/opt/elixir

dnf -y remove tar make
dnf clean all
rm -rf /${ELIXIR_SOURCE_ARCHIVE} /${ELIXIR_SOURCE}
