echo "Testing 1.1.4.1 Ensure separate partition exists for /var/tmp."
if [ $(findmnt --kernel /var/tmp | wc -l) -ge 1 ]
then
  echo "PASS 1.1.4.1"
else
  echo "FAIL 1.1.4.1: fstab does not include an entry for /var/tmp."
fi
