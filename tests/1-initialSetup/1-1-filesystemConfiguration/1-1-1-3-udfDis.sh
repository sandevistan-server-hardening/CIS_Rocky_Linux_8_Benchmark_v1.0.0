echo "Testing 1.1.1.3 Ensure mounting of udf filesystems is disabled"
if [ -d "$HOME/.azure"]
  echo "PASS 1.1.1.3: $HOME/.azure detected, very probably on Azure, udf is necessary."
else
  if [ $(lsmod | grep -c udf) -le 0 ]
  then
    if [ $(modprobe -n -v udf | grep "^install") == "install /bin/false" ] then
      if [ $(grep -E "^blacklist[[:blank:]]*udf" /etc/modprobe.d/* | wc -l) -ge 1 ] then
        echo "PASS 1.1.1.3"
      else
        echo "FAIL 1.1.1.3: the udf module isn't blacklisted."
      fi
    else
      echo "FAIL 1.1.1.3: the udf module isn't loaded with /bin/false"
    fi
  else
    echo "FAIL 1.1.1.3: udf is loaded."
  fi
fi
