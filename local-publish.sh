#!/bin/bash
FILE=~/bin/create-script-lib
if test -f "$FILE"; then
    chmod 0700 "$FILE"
fi
cp "./create-script-lib.sh" "$FILE"
chmod 0500 "$FILE"
