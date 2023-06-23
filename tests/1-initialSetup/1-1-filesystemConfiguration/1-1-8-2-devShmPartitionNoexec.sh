echo "Testing 1.1.8.2 Ensure noexec option set on /dev/shm partition."
if [ $(findmnt --kernel /dev/shm | grep -c noexec) -ge 1 ]
then
  echo "PASS 1.1.8.2"
else
  echo "FAIL 1.1.8.2: fstab does not include noexec option for /dev/shm mount."
fi
