#! /bin/bash
. `dirname $0`/../.such-dirs.sh

cp $such_dir/mozconfig/m-debug $such_src_dir/.mozconfig

echo 'Switched to mobile debug build.'
echo 'Currently on mobile debug build.' > $such_dir/../.such-prep-status.txt
