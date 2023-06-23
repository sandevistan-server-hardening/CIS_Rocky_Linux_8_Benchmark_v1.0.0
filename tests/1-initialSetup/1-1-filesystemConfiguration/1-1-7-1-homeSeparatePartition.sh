echo "Testing 1.1.7.1 Ensure separate partition exists for /home."
if [ $(findmnt --kernel /home | wc -l) -ge 1 ]
then
  echo "PASS 1.1.7.1"
else
  echo "FAIL 1.1.7.1: fstab does not include an entry for /home."
fi
