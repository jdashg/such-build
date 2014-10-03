#!/bin/bash
suchdir=`dirname $0`
cd $suchdir/..

cp such/mozconfig/m-opt central/.mozconfig

echo 'Switched to mobile opt build.'
echo 'Currently on mobile opt build.' > .such-prep-status.txt
