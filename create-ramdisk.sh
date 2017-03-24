. ../.such-dirs.sh

mkdir "$objs_dir" 2>/dev/null

reserved=8
total=$(free -g | awk '/^Mem:/{print $2}')
diff=$((total - reserved))

sudo mount -t tmpfs -o size="$diff"G tmpfs "$objs_dir"
echo "$diff"GB ramdisk mounted at "$objs_dir"
