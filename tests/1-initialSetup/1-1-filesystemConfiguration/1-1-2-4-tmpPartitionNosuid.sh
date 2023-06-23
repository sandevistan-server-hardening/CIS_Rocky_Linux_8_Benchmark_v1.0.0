echo "Testing 1.1.2.4 Ensure nosuid option set on /tmp partition."
if [ $(findmnt --kernel /tmp | grep -c nosuid) -ge 1 ]
then
  echo "PASS 1.1.2.4"
else
  echo "FAIL 1.1.2.4: fstab does not include nosuid option for /tmp mount."
fi

