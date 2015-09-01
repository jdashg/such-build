#! /bin/bash
. `dirname $0`/../.such-dirs.sh

cd $such_obj_dir

cd obj-dbg
mkdir /tmp/foo 2>/dev/null

export MOZ_QUIET=1
lldb -- ./dist/NightlyDebug.app/Contents/MacOS/firefox -profile /tmp/foo -no-remote
