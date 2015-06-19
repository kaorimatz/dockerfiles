#!/bin/sh

set -e
set -u
set -x

RUBY_VERSION=2.0.0-p598

dnf -y install git tar gcc make openssl-devel libffi-devel readline-devel

git clone git://github.com/sstephenson/ruby-build.git /ruby-build
RUBY_CONFIGURE_OPTS='--disable-install-doc' /ruby-build/bin/ruby-build "$RUBY_VERSION" /opt/ruby

dnf -y remove git tar gcc make openssl-devel libffi-devel readline-devel
dnf clean all
rm -rf /tmp/ruby-build*
rm -rf /ruby-build
