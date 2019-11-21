#! /bin/bash
. `dirname $0`/init-common.sh

cat $such_dir/mixin/local-common > $such_dir/../.such-mixin-local
cat $such_dir/mixin/local-$1 >> $such_dir/../.such-mixin-local
