#!/bin/bash

. ./.such-dirs.sh
cd $OBJDIR_RELPATH

cd obj-dbg
mkdir foo 2>/dev/null

export MOZ_QUIET=1
gdb --args ./dist/bin/firefox -profile foo -no-remote
