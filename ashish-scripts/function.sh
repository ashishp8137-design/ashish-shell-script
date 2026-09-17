#!/bin/bash

haldi() {

	echo " haldi lagao"
	echo "pani me daal do"

}

echo "$1 is the main argument passed to the scripts"

install_package() {
	echo "$1 is the local argument passed to function"	
sudo apt install $1

}

install_package docker.io






	
