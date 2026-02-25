#!/bin/bash
#

#$# is a special variable in bash, that expands to the number of arguments (positional parameters) i.e. $1, $2 ...

#echo "$#

if [ "$#" -eq 0 ];then
   echo "Usage: ./greet.sh <name>"
   exit 1

else

  echo "Hello, $1!"

fi












