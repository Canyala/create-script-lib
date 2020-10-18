#!/bin/bash
FILE=~/bin/create-script-lib-repo
if test -f "$FILE"; then
    chmod 0700 "$FILE"
fi
cp "./create-script-lib-repo.sh" "$FILE"
chmod 0500 "$FILE"
