#!/bin/bash

install_packages() {

read -p "Enter the user name you want to install:" user_name
read -p "Enter the password of user:" password


echo "Robo is checking user list .."

if id "$user_name" &>/dev/null; then
	
	echo "The user $user_name is already exists"
	exit 1
else
	echo "The user $user_name is not exists"
fi

sudo useradd -m $user_name -p $password

echo "The user $user_name has been created"

}

install_packages
