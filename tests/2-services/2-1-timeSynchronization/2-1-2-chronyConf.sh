echo "Testing 2.1.2 Ensure chrony is configured"

if [ $(grep -E "^(server|pool)" /etc/chrony.conf | wc -l) -ge 1 ]
then
  if [ $(grep ^OPTIONS /etc/sysconfig/chronyd | grep -c "\-u chrony") -ge 1 ]
  then
    echo "PASS 2.1.2"
  else
    echo "FAIL 2.1.2: OPTIONS does not include '-u chrony'"
  fi
else
  echo "FAIL 2.1.2: No remote chrony servers are configured"
fi
