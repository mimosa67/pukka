#! /bin/sh
# requires four args: dir, arch and version - then one package
# search repo for a package

configdir=$1
arch=$2
ver=$3
pkg=$4

/usr/sbin/slapt-get --config ${configdir}/slapt-getrc-$arch-$ver --search $pkg
