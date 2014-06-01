#!/bin/sh

set -e
set -u
set -x

yum -y install perl tar make gcc

curl -fsSL https://raw.githubusercontent.com/tokuhirom/Perl-Build/master/perl-build > /perl-build
chmod +x /perl-build
/perl-build 5.20.0 /opt/perl

yum -y autoremove perl tar make gcc
yum clean all
rm -f /perl-build
