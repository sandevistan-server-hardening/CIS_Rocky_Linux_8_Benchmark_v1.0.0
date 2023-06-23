echo "Testing 1.1.2.3 Ensure noexec option set on /tmp partition."
if [ $(findmnt --kernel /tmp | grep -c noexec) -ge 1 ]
then
  echo "PASS 1.1.2.3"
else
  echo "FAIL 1.1.2.3: fstab does not include noexec option for /tmp mount."
fi

