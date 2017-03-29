#!/bin/bash
src_dir="$PWD"

if [ ! -e "$src_dir"/CLOBBER ]
then
  echo 'Run only from the srcroot.'
  exit 1
fi

echo '   much config'
echo '               very default'
echo '         wow'

objs_rel_dir=../objs

####

such_dir="$src_dir"/`dirname $0`
objs_dir="$src_dir"/"$objs_rel_dir"

# `realpath` isn't present on moz-build.
pushd "$such_dir" >/dev/null
such_dir=`pwd`
popd >/dev/null

pushd "$objs_dir" >/dev/null
objs_dir=`pwd`
popd >/dev/null

echo '#! /bin/bash'                >  "$src_dir"/../.such-dirs.sh
echo '# From such/init-common.sh:' >> "$src_dir"/../.such-dirs.sh
echo 'such_dir='"$such_dir"        >> "$src_dir"/../.such-dirs.sh
echo 'objs_dir='"$objs_dir"        >> "$src_dir"/../.such-dirs.sh

####

obj_dir_name=`basename "$src_dir"`
moz_objdir="@TOPSRCDIR@/$objs_rel_dir/$obj_dir_name"

cat "$such_dir"/defaults/.mozconfig            >  "$src_dir"/.mozconfig
echo ''                                        >> "$src_dir"/.mozconfig
echo '# From such/init-common.sh:'             >> "$src_dir"/.mozconfig
echo 'mk_add_options MOZ_OBJDIR='"$moz_objdir" >> "$src_dir"/.mozconfig
