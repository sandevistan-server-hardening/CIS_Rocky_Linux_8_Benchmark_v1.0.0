echo "Testing 1.3.1 Ensure AIDE is installed."
if [ $(rpm -q aide | grep -c ^aide) -ge 1 ]
then
  echo "PASS 1.3.1"
else
  echo "FAIL 1.3.1: AIDE is not installed."
fi
