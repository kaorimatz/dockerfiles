#!/bin/sh

set -e
set -u
set -x

yum -y install git tar gcc make openssl-devel libffi-devel readline-devel

git clone git://github.com/sstephenson/ruby-build.git /ruby-build
RUBY_CONFIGURE_OPTS='--disable-install-doc' /ruby-build/bin/ruby-build 2.1.2 /opt/ruby

yum -y autoremove git tar gcc make openssl-devel libffi-devel readline-devel
yum clean all
rm -rf /tmp/ruby-build*
rm -rf /ruby-build
