echo "Testing 1.1.3.1 Ensure separate partition exists for /var."
if [ $(findmnt --kernel /var | wc -l) -ge 1 ]
then
  echo "PASS 1.1.3.1"
else
  echo "FAIL 1.1.3.1: fstab does not include an entry for /var."
fi

