echo "Testing 1.1.2.1 Ensure /tmp is a separate partition."
if [ $(findmnt --kernel /tmp | wc -l) -ge 1 ]
then
  if [ $(systemctl is-enabled tmp.mount) == "static" ] then
    echo "PASS 1.1.2.1"
  else
    echo "FAIL 1.1.2.1: /tmp mount is not static."
  fi
else
  echo "FAIL 1.1.2.1: /tmp is not mounted."
fi

