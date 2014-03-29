#!/bin/bash

. ./.such-dirs.sh
cd $OBJDIR_RELPATH

cd obj-opt
mkdir foo 2>/dev/null

export JS_DISABLE_SLOW_SCRIPT_SIGNALS=1
export MOZ_QUIET=1
~/bin/apitrace/build/apitrace trace ./dist/bin/firefox -profile foo -no-remote
