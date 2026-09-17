#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Please pass a file as an argument"
	echo "USsage: ./if_file_exists.sh <file_name>"

	exit 1
fi



if [ -f $1 ]
then
	echo "File Exists"
else
	echo "File dosen't exists"
fi

