echo "Testing 1.1.6.2 Ensure noexec option set on /var/log/audit partition."
if [ $(findmnt --kernel /var/log/audit | grep -c noexec) -ge 1 ]
then
  echo "PASS 1.1.6.2"
else
  echo "FAIL 1.1.6.2: fstab does not include noexec option for /var/log/audit mount."
fi
