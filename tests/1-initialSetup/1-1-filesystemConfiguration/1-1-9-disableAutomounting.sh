echo "Testing 1.1.9 Disable automounting."
if [ $(systemctl is-enabled autofs) == "Failed to get unit file state for autofs.service: No such file or directory" ]
then
  echo "PASS 1.1.9"
else
  if [ $(systemctl is-enabled autofs) == "disabled" ]
  then
    echo "PASS 1.1.9"
  else
    echo "FAIL 1.1.9: autofs is both installed and enabled."
  fi
fi
