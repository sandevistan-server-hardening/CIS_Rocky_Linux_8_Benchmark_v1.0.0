echo "Testing 1.1.4.4 Ensure nodev option set on /var/tmp partition."
if [ $(findmnt --kernel /var/tmp | grep -c nodev) -ge 1 ]
then
  echo "PASS 1.1.4.4"
else
  echo "FAIL 1.1.4.4: fstab does not include nodev option for /var/tmp mount."
fi
