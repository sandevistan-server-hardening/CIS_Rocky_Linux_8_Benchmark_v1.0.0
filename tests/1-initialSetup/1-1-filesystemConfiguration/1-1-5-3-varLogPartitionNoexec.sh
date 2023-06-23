echo "Testing 1.1.5.3 Ensure noexec option set on /var/log partition."
if [ $(findmnt --kernel /var/log | grep -c noexec) -ge 1 ]
then
  echo "PASS 1.1.5.3"
else
  echo "FAIL 1.1.5.3: fstab does not include noexec option for /var/log mount."
fi
