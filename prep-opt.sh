#! /bin/bash
. `dirname $0`/../.such-dirs.sh

cp $such_dir/mozconfig/opt $such_src_dir/.mozconfig

echo 'Switched to desktop opt build.'
echo 'Currently on desktop opt build.' > $such_dir/../.such-prep-status.txt
