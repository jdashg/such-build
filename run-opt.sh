#! /bin/bash
. `dirname $0`/../.such-dirs.sh

src_dir_name=`basename $PWD`
obj_dir_name=$src_dir_name'-obj'

cd $such_obj_dir
cd $obj_dir_name
mkdir foo 2>/dev/null

export JS_DISABLE_SLOW_SCRIPT_SIGNALS=1
export MOZ_QUIET=1
export MOZ_SEPARATE_CHILD_PROCESS=1
export MOZ_GL_SPEW=1
./dist/bin/firefox -profile foo -no-remote 2>&1

./dist/Nightly*/Contents/MacOS/firefox -profile foo -no-remote 2>&1
