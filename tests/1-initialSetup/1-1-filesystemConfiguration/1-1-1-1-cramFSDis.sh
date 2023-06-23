echo "Testing 1.1.1.1 Ensure mounting of cramfs filesystems is disabled"
if [ $(lsmod | grep -c cramfs) -le 0 ]
then
  if [ $(modprobe -n -v cramfs | grep "^install") == "install /bin/false" ] then
    if [ $(grep -E "^blacklist\s+cramfs" /etc/modprobe.d/* | wc -l) -ge 1 ] then
      echo "PASS 1.1.1.1"
    else
      echo "FAIL 1.1.1.1: the cramfs module isn't blacklisted."
    fi
  else
    echo "FAIL 1.1.1.1: the cramfs module isn't loaded with /bin/false"
  fi
else
  echo "FAIL 1.1.1.1: cramfs is loaded."
fi
