#! /bin/bash
. `dirname $0`/../.such-dirs.sh

cd $such_obj_dir

cd obj-opt
mkdir foo 2>/dev/null

export JS_DISABLE_SLOW_SCRIPT_SIGNALS=1
export MOZ_QUIET=1
#~/bin/apitrace/build/apitrace trace ./dist/bin/firefox -profile foo -no-remote
~/Downloads/apitrace-msvc-latest/apitrace-msvc/x86/bin/apitrace trace ./dist/bin/firefox -profile foo -no-remote
