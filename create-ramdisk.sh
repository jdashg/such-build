. ../.such-dirs.sh

mkdir "$obj_dir" 2>/dev/null

reserved=8
total=$(free -g | awk '/^Mem:/{print $2}')
diff=$((total - reserved))

sudo mount -t tmpfs -o size="$diff"G tmpfs "$obj_dir"
echo "$diff"GB ramdisk mounted at "$obj_dir"
