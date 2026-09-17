#!/bin/bash

read -p "Enter the Package Name:" paickage_name


if dpkg -s $package_name >/dev/null 2>&1 ; then
	echo "$package_name already installed"
	exit 1
else
	echo "continuing installation....."
fi

echo "Updating System & installing $package_name"
sudo apt-get update 
sudo apt install $package_name -y


read -p "Enter the Service Name :" service_name

sudo systemctl start $service_name
sudo systemctl status $service_name
