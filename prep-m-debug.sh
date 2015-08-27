#!/bin/bash
suchdir=`dirname $0`
cd $suchdir/..

cp such/mozconfig/m-debug gecko-dev/.mozconfig

echo 'Switched to mobile debug build.'
echo 'Currently on mobile debug build.' > .such-prep-status.txt
