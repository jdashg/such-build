#!/bin/bash
suchdir=`dirname $0`
cd $suchdir/..

cp such/mozconfig/mv6-debug gecko-dev/.mozconfig

echo 'Switched to mobile ARMv6 debug build.'
echo 'Currently on mobile ARMv6 debug build.' > .such-prep-status.txt
