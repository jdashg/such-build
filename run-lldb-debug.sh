#! /bin/bash
. `dirname $0`/../.such-dirs.sh

src_dir_name=`basename $PWD`
obj_dir_name=$src_dir_name'-obj'

cd $such_obj_dir
cd $obj_dir_name
mkdir foo 2>/dev/null

export MOZ_QUIET=1
lldb -- ./dist/NightlyDebug.app/Contents/MacOS/firefox -profile /tmp/foo -no-remote
