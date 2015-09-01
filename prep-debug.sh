#! /bin/bash
. `dirname $0`/../.such-dirs.sh

cp $such_dir/mozconfig/debug $such_src_dir/.mozconfig

echo 'Switched to desktop debug build.'
echo 'Currently on desktop debug build.' > $such_dir/../.such-prep-status.txt
