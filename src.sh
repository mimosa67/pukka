#!/bin/sh

#src.sh
#parse source line in SLKBUILD

unset source
. SLKBUILD
srclist="["
for src in "${source[@]}"; do
    srclist=${srclist}"'"${src##*/}"', "
done
srclist=${srclist%, }
srclist=${srclist}"]"
echo $srclist
