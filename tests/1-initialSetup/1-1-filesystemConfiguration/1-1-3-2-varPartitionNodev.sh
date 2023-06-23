echo "Testing 1.1.3.2 Ensure nodev option set on /var partition."
if [ $(findmnt --kernel /var | grep -c nodev) -ge 1 ]
then
  echo "PASS 1.1.3.2"
else
  echo "FAIL 1.1.3.2: fstab does not include nodev option for /var mount."
fi

