#confidence check that the working directory includes the sandevistan tests folder
#we should have a single argument, a directory, which we iterate subdirs and execute files contained within.
if [[ $1 == /* ]]
then
  directoryName=$1
else
  directoryName="$(pwd)/$1"
fi
if [ "$(echo "$directoryName" | grep -c 'tests')" -le 0 ]; then
  echo "Not iterating a sandevistan tests subdirectory. Exiting."
  exit 12
fi

#dip into each folder in this directory and execute each file.
for d in $directoryName/*; do
echo $d
  if [ -d "$d" ]
  then
    ${0} $d
  fi  
  if [ -f "$d" ]
  then
    source $d
  fi
done

#TODO: confidence check the files maybe?
