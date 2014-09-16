#!/bin/bash

#My F to C script was working so I changed it to convert from F or C.

if [ $# -ne 2 ];
then
  echo "Please enter the temperature and unit inputs as two arguments."
else
  if [ $2 == "F" ];
    then
	((temperature = ($1-32)*5/9))
    echo "Temperature = $temperature C"
  elif [ $2 == "C" ];
    then
	((temperature = ($1*9/5)+32))
    echo "Temperature = $temperature F"
  else
    echo "Invalid units - please enter F or C"
  fi
fi

