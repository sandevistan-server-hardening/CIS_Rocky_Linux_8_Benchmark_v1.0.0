echo "Testing 1.1.2.2 Ensure nodev option set on /tmp partition."
if [ $(findmnt --kernel /tmp | grep -c nodev) -ge 1 ]
then
  echo "PASS 1.1.2.2"
else
  echo "FAIL 1.1.2.2: fstab does not include nodev option for /tmp mount."
fi

