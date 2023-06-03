#TODO; 
#output redirection to timestamped log files 
#accepting flags to pass to the core script and run subsets or individual test

#intial confidence checks
#permissions level of root for many of these tests
if [ ! $(id -u) == 0 ]
then
  echo "Root permissions are required for several of these tests. Use su to switch to root or run with 'sudo baseline_config_audit'. Exiting."
  exit 10;
fi

./iterateAndExecute.sh tests > cis_audit_$(/bin/date +%Y-%m-%d-%H:%M:%S).log 2>&1 
