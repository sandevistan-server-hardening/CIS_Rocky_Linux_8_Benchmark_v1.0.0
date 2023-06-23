echo "Testing 1.2.2 Ensure gpgcheck is globally activated."
if [ "$(grep ^gpgcheck /etc/dnf/dnf.conf)" == "gpgcheck=1" ]
then
  echo "PASS 1.2.2"
else
  echo "FAIL 1.2.2: gpgcheck is not set to 1 in dnf.conf."
fi
