echo "Testing 1.1.6.4 Ensure nosuid option set on /var/log/audit partition."
if [ $(findmnt --kernel /var/log/audit | grep -c nosuid) -ge 1 ]
then
  echo "PASS 1.1.6.4"
else
  echo "FAIL 1.1.6.4: fstab does not include nosuid option for /var/log/audit mount."
fi
