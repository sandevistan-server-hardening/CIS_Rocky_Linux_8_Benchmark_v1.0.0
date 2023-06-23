echo "Testing 1.1.6.3 Ensure nodev option set on /var/log/audit partition."
if [ $(findmnt --kernel /var/log/audit | grep -c nodev) -ge 1 ]
then
  echo "PASS 1.1.6.3"
else
  echo "FAIL 1.1.6.3: fstab does not include nodev option for /var/log/audit mount."
fi
