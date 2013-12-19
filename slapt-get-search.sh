#! /bin/sh
# requires two args: arch and version
# search repo for a package

arch=$1
ver=$2

alias slapt-get-$arch-$ver='/usr/sbin/slapt-get --config /usr/libexec/pkgdepcheck/slapt-getrc-$arch-$ver'
slapt-get-$arch-$ver --search $@
