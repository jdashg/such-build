#!/bin/bash
suchdir=`dirname $0`
cd $suchdir/..

cp such/mozconfig/opt central/.mozconfig

echo 'Switched to desktop opt build.'
echo 'Currently on desktop opt build.' > .such-prep-status.txt
