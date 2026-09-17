#!/bin/bash

read -p "Enter the user name:" user_name
read -p "Enter the password:" pass_word

if id "$user_name" &>/dev/null; then
	echo "user $user_name already exists"
	exit 1
else
	echo "user $user_name not exists"
fi
sudo useradd -m $user_name -p $pass_word
echo "user added successfully"


