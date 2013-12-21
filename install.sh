#! /bin/sh
# install.sh
#install pukka

chmod +x pukka slkparse.sh slapt-get-search.sh slapt-get-update.sh
mkdir -p /usr/libexec/pukka
cp pukkarc slkparse.sh slapt-get-search.sh slapt-get-update.sh /usr/libexec/pukka
cp ./pukka /usr/local/bin
