echo "Testing 1.1.8.1 Ensure nodev option set on any existing /dev/shm partition."
if [ $(mount | grep -E '\s/dev/shm\s' | grep -v nodev | wc -l) -le 1 ]
then
  echo "PASS 1.1.8.1"
else
  echo "FAIL 1.1.8.1: There is a /dev/shm partition and it does not have the nodev option."
fi
