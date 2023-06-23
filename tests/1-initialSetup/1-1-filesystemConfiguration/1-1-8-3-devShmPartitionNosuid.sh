echo "Testing 1.1.8.3 Ensure nosuid option set on /dev/shm partition."
if [ $(mount | grep -E '\s/dev/shm\s' | grep -v nodev | wc -l) -le 1 ]
then
  echo "PASS 1.1.8.3"
else
  echo "FAIL 1.1.8.3: fstab does not include nosuid option for /dev/shm mount."
fi
