#!/bin/sh

#src.sh
#parse source line in SLKBUILD
#output a list

unset source
. SLKBUILD
srclist="["
for src in "${source[@]}"; do
    src=`basename "$src"`
    srclist=${srclist}"'"${src}"', " # strip any paths and separate with commas
done
srclist=${srclist%, }"]" # remove trailing comma and close bracket
echo $srclist
