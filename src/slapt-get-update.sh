#!/bin/sh
#create package database for arch, version, mirror
#defaults to http://download.salixos.org
cd /home/$USER/.config/pukka
help() {
  echo "syntax: $(basename $0) i486|x86_64 version [mirror]"
}
if [ "$1" != "i486" ] && [ "$1" != "x86_64" ]; then
  help
  exit 1
fi
if [ -z "$2" ]; then
  help
  exit 1
fi
mirror=$3
if [ -z "$3" ]; then
  mirror="http://download.salixos.org/"
fi
echo "mirror" $mirror
arch=$1
ver=$2
mkdir -p slapt-get-${arch}-${ver}
[ "$arch" = "i486" ] && exclude=-x86_64-
[ "$arch" = "x86_64" ] && exclude=-i?86-
[ "$arch" = "i486" ] && srcdir=i486
[ "$arch" = "x86_64" ] && srcdir=x86_64
cat <<EOF > slapt-getrc-$arch-$ver
WORKINGDIR=$PWD/slapt-get-${arch}-${ver}
EXCLUDE=.*-[0-9]+dl$,$exclude
SOURCE=$mirror/$srcdir/slackware-$ver/:OFFICIAL
SOURCE=$mirror/$srcdir/slackware-$ver/extra/:OFFICIAL
SOURCE=$mirror/$srcdir/$ver/:PREFERRED
EOF
echo "Downloading package data for $arch $ver"
ROOT=$PWD
export ROOT
/usr/sbin/slapt-get --config $PWD/slapt-getrc-$arch-$ver -u> /dev/null
echo "Done"
