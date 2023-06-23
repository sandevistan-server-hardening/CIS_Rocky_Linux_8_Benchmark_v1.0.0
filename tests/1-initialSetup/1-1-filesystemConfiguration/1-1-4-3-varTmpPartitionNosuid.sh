echo "Testing 1.1.4.3 Ensure nosuid option set on /var/tmp partition."
if [ $(findmnt --kernel /var/tmp | grep -c nosuid) -ge 1 ]
then
  echo "PASS 1.1.4.3"
else
  echo "FAIL 1.1.4.3: fstab does not include nosuid option for /var/tmp mount."
fi
