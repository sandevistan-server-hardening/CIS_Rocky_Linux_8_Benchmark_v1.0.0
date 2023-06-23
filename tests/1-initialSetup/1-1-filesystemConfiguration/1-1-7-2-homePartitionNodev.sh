echo "Testing 1.1.7.2 Ensure nodev option set on /home partition."
if [ $(findmnt --kernel /home | grep -c nodev) -ge 1 ]
then
  echo "PASS 1.1.7.2"
else
  echo "FAIL 1.1.7.2: fstab does not include nodev option for /home mount."
fi
