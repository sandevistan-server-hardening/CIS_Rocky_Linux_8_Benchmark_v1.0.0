echo "Testing 1.1.10 Disable USB storage."
mpval=$(modprobe -n -v usb-storage)
if [ "$mpval" != "install /bin/true" ]
then
  echo "FAIL 1.1.10: USB install script is not /bin/true"
else
  if [ $(lsmod | grep usb-storage | wc -l) -le 0 ]
  then
    echo "PASS 1.1.10"
  else
    echo "FAIL 1.1.10: USB storage module is loaded."
  fi
fi
