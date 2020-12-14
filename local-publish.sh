#!/bin/bash -x
FILE=~/bin/create-script-lib
TEMPLATE=~/bin/create-script-lib.template.md
if test -f "$FILE"; then
    chmod 0700 "$FILE"
fi
cp "./create-script-lib.sh" "$FILE"
cp "./TEMPLATE.md" "$TEMPLATE"
chmod 0500 "$FILE"
