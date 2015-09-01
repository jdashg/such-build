#! /bin/bash
. `dirname $0`/../.such-dirs.sh

cp $such_dir/mozconfig/m-opt $such_src_dir/.mozconfig

echo 'Switched to mobile opt build.'
echo 'Currently on mobile opt build.' > $such_dir/../.such-prep-status.txt
