echo "Testing 1.1.7.5 Ensure grpquota option set on /home partition."
if [ $(findmnt --kernel /home | grep -c grpquota) -ge 1 ]
then
  echo "PASS 1.1.7.5"
else
  echo "FAIL 1.1.7.5: fstab does not include grpquota option for /home mount."
fi
