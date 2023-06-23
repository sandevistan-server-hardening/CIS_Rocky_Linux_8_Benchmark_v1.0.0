echo "Testing 1.1.5.2 Ensure nodev option set on /var/log partition."
if [ $(findmnt --kernel /var/log | grep -c nodev) -ge 1 ]
then
  echo "PASS 1.1.5.2"
else
  echo "FAIL 1.1.5.2: fstab does not include nodev option for /var/log mount."
fi
