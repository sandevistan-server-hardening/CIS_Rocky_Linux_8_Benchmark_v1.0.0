printf "install squashfs /bin/false
blacklist squashfs
" >> ets/modprobe.d/squashfs.conf

modprobe -r squashfs
