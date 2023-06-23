echo "Testing 1.1.5.1 Ensure separate partition exists for /var/log."
if [ $(findmnt --kernel /var/log | wc -l) -ge 1 ]
then
  echo "PASS 1.1.5.1"
else
  echo "FAIL 1.1.5.1: fstab does not include an entry for /var/log."
fi
