#!/bin/bash
such_src_dir=$PWD
such_dir=$PWD/`dirname $0`

rm $such_src_dir/../.such-probe 2>/dev/null
rm $such_dir/../.such-probe 2>/dev/null

touch $such_src_dir/../.such-probe
if [ ! -e $such_dir/../.such-probe ]
then
  echo "Source and Such dirs must share a parent dir."
  exit 1
fi

echo "   much config"
echo "               very default"
echo "         wow"

cp -fp $such_dir/defaults/.such-dirs.sh $such_dir/../.such-dirs.sh

echo "" >> $such_dir/../.such-dirs.sh
echo "# Vars below are from init-with-cwd.sh." >> $such_dir/../.such-dirs.sh
echo "such_dir=$such_dir" >> $such_dir/../.such-dirs.sh
echo "such_src_dir=$such_src_dir" >> $such_dir/../.such-dirs.sh
