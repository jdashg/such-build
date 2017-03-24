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

such_dir="$src_dir"/`dirname $0`
such_dir=`realpath "$such_dir"`

objs_dir=`realpath "$src_dir"/../objs`

echo '#! /bin/bash'                >  "$src_dir"/../.such-dirs.sh
echo '# From such/init-common.sh:' >> "$src_dir"/../.such-dirs.sh
echo 'such_dir='"$such_dir"        >> "$src_dir"/../.such-dirs.sh
echo 'objs_dir='"$objs_dir"        >> "$src_dir"/../.such-dirs.sh

obj_dir="$objs_dir"/`basename "$src_dir"`

cat "$such_dir"/defaults/.mozconfig         >  "$src_dir"/.mozconfig
echo ''                                     >> "$src_dir"/.mozconfig
echo '# From such/init-common.sh:'          >> "$src_dir"/.mozconfig
echo 'mk_add_options MOZ_OBJDIR='"$obj_dir" >> "$src_dir"/.mozconfig
