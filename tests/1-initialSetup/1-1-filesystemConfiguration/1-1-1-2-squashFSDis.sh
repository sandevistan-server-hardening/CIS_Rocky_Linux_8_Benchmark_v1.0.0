echo "Testing 1.1.1.2 Ensure mounting of squashfs filesystems is disabled"
if [ $(lsmod | grep -c squashfs) -le 0 ]
then
  if [ $(modprobe -n -v squashfs | grep "^install") == "install /bin/false" ] then
    if [ $(grep -E "^blacklist\s+squashfs" /etc/modprobe.d/* | wc -l) -ge 1 ] then
      echo "PASS 1.1.1.2"
    else
      echo "FAIL 1.1.1.2: the squashfs module isn't blacklisted."
    fi
  else
    echo "FAIL 1.1.1.2: the squashfs module isn't loaded with /bin/false"
  fi
else
  echo "FAIL 1.1.1.2: squashfs is loaded."
fi
