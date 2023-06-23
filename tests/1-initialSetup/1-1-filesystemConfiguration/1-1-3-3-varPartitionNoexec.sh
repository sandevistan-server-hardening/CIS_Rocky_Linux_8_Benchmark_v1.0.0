echo "Testing 1.1.3.3 Ensure noexec option set on /var partition."
if [ $(findmnt --kernel /var | grep -c noexec) -ge 1 ]
then
  echo "PASS 1.1.3.3"
else
  echo "FAIL 1.1.3.3: fstab does not include noexec option for /var mount."
fi

