#!/bin/bash
suchdir=`dirname $0`
cd $suchdir/..

. .such-dirs.sh

cd $OBJDIR_RELPATH

cd obj-dbg
mkdir foo 2>/dev/null

export JS_DISABLE_SLOW_SCRIPT_SIGNALS=1
export MOZ_QUIET=1
./dist/bin/firefox -console -profile foo -no-remote
