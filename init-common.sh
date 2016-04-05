#!/bin/bash
such_src_dir=$PWD
such_dir=$such_src_dir/`dirname $0`

rm ../.such-probe 2>/dev/null
rm $such_dir/../.such-probe 2>/dev/null

touch ../.such-probe
if [ ! -e $such_dir/../.such-probe ]
then
  rm ../.such-probe
  echo "Source and Such dirs must share a parent dir."
  exit 1
fi
rm ../.such-probe

echo "   much config"
echo "               very default"
echo "         wow"

cp -fp $such_dir/defaults/.such-dirs.sh ../.such-dirs.sh

echo "" >> ../.such-dirs.sh
echo "# Vars below are from init-with-cwd.sh." >> ../.such-dirs.sh
echo "such_dir=$such_dir" >> ../.such-dirs.sh
echo "such_src_dir=$such_src_dir" >> ../.such-dirs.sh

echo "../such/mast.sh" > ../mast
echo "../such/git-export.sh" > ../git-export
echo "../such/hg-import.sh" > ../hg-import
echo "../such/hg-unimport.sh" > ../hg-unimport
