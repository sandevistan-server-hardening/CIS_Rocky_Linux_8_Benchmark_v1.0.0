echo "Testing 1.1.7.3 Ensure nosuid option set on /home partition."
if [ $(findmnt --kernel /home | grep -c nosuid) -ge 1 ]
then
  echo "PASS 1.1.7.3"
else
  echo "FAIL 1.1.7.3: fstab does not include nosuid option for /home mount."
fi
