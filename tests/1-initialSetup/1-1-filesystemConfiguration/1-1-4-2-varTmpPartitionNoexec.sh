echo "Testing 1.1.4.2 Ensure noexec option set on /var/tmp partition."
if [ $(findmnt --kernel /var/tmp | grep -c noexec) -ge 1 ]
then
  echo "PASS 1.1.4.2"
else
  echo "FAIL 1.1.4.2: fstab does not include noexec option for /var/tmp mount."
fi
