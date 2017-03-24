#!/bin/bash
src_dir="$PWD"
such_dir="$src_dir"/`dirname $0`
obj_dir="$src_dir"/../objs/`basename "$src_dir"`

if [ ! -e "$src_dir"/CLOBBER ]
then
  echo 'Run only from the srcroot.'
  exit 1
fi

echo '   much config'
echo '               very default'
echo '         wow'

echo '#! /bin/bash'                >  "$src_dir"/../.such-dirs.sh
echo '# From such/init-common.sh:' >> "$src_dir"/../.such-dirs.sh
echo 'such_dir='"$such_dir"        >> "$src_dir"/../.such-dirs.sh
echo 'obj_dir='"$obj_dir"          >> "$src_dir"/../.such-dirs.sh

cat "$such_dir"/defaults/.mozconfig         >  "$src_dir"/.mozconfig
echo ''                                     >> "$src_dir"/.mozconfig
echo '# From such/init-common.sh:'          >> "$src_dir"/.mozconfig
echo 'mk_add_options MOZ_OBJDIR='"$obj_dir" >> "$src_dir"/.mozconfig
