#! /bin/bash
. `dirname $0`/../.such-dirs.sh

cd $such_obj_dir

cd obj-dbg
mkdir foo 2>/dev/null

export JS_DISABLE_SLOW_SCRIPT_SIGNALS=1
export MOZ_QUIET=1
export XPCOM_DEBUG_BREAK=trap
gdb -quiet --args ./dist/bin/firefox -profile foo -no-remote
