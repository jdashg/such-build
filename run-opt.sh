. ./.such-dirs.sh
cd $OBJDIR_RELPATH

cd obj-opt
mkdir foo 2>/dev/null

export MOZ_QUIET=1
./dist/bin/firefox -profile foo -no-remote
