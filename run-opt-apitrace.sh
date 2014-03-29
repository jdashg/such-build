#!/bin/bash

. ./.such-dirs.sh
cd $OBJDIR_RELPATH

cd obj-opt
mkdir foo 2>/dev/null

export MOZ_QUIET=1
~/bin/apitrace/build/apitrace trace ./dist/bin/firefox -profile foo -no-remote
