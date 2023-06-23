echo "Testing 1.1.5.4 Ensure nosuid option set on /var/log partition."
if [ $(findmnt --kernel /var/log | grep -c nosuid) -ge 1 ]
then
  echo "PASS 1.1.5.4"
else
  echo "FAIL 1.1.5.4: fstab does not include nosuid option for /var/log mount."
fi
