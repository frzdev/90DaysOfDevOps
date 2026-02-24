#!/bin/bash

read -p "Please enter the file name" fname

if [ -f  $fname ]; then
  
  
    echo "file exists"
    
else

  echo "file not exists"
fi  


