#!/bin/bash
read -p "enter the file name" file_name


	
if [ -f $file_name ]
then
      echo "$file_name file exists"	
else
	echo "$file_name not exits"
fi
