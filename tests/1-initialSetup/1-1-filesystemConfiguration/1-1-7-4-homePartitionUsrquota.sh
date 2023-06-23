echo "Testing 1.1.7.4 Ensure usrquota option set on /home partition."
if [ $(findmnt --kernel /home | grep -c usrquota) -ge 1 ]
then
  echo "PASS 1.1.7.4"
else
  echo "FAIL 1.1.7.4: fstab does not include usrquota option for /home mount."
fi
