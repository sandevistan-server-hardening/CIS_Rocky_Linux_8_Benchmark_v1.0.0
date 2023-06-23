echo "Testing 1.1.6.1 Ensure separate partition exists for /var/log/audit."
if [ $(findmnt --kernel /var/log/audit | wc -l) -ge 1 ]
then
  echo "PASS 1.1.6.1"
else
  echo "FAIL 1.1.6.1: fstab does not include an entry for /var/log/audit."
fi
