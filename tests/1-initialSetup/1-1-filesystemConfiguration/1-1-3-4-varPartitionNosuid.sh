echo "Testing 1.1.3.4 Ensure nosuid option set on /var partition."
if [ $(findmnt --kernel /var | grep -c nosuid) -ge 1 ]
then
  echo "PASS 1.1.3.4"
else
  echo "FAIL 1.1.3.4: fstab does not include nosuid option for /var mount."
fi

