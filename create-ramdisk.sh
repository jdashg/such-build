mkdir ~/ram

reserved=8
total=$(free -g | awk '/^Mem:/{print $2}')
diff=$((total - reserved))

sudo mount -t tmpfs -o size="$diff"G tmpfs ~/ram
echo "$diff"GB ramdisk mounted at ~/ram
