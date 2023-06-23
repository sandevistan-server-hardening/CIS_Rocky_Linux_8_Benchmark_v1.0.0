echo "Testing 2.1.1 Ensure time synchronization is in use"

if [ $(rpm -q chrony | grep -c ^chrony) -ge 1 ]
then
  echo "PASS 2.1.1"
else
  echo "FAIL 2.1.1: chrony is not installed."
fi
