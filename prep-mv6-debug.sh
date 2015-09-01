#! /bin/bash
. `dirname $0`/../.such-dirs.sh

cp $such_dir/mozconfig/mv6-debug $such_src_dir/.mozconfig

echo 'Switched to mobile ARMv6 debug build.'
echo 'Currently on mobile ARMv6 debug build.' > $such_dir/../.such-prep-status.txt
