#!/bin/bash

. ./.such-dirs.sh
cd $OBJDIR_RELPATH

cd obj-dbg
mkdir /tmp/foo 2>/dev/null

export MOZ_QUIET=1
lldb -- ./dist/NightlyDebug.app/Contents/MacOS/firefox -profile /tmp/foo -no-remote
