#!/bin/bash

for pkg in nginx  curl wget ;do

   if dpkg -s "$pkg" >/dev/null  2>&1; then
	  
       echo "$pkg is already installed. Skipping"
   else
      echo "$pkg is not installed. Installing"
      sudo apt install "$pkg" -y >/dev/null
     echo "$pkg installation completed."
   fi 
done


