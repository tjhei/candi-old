#!/bin/bash

DIRS=`compgen -v | grep "_DIR$"`

for d in $DIRS; do
    v=${!d}
    echo "checking $d = $v ..."
    [[ -d "$v" ]] || exit 1
done

echo "OK"
exit 0
