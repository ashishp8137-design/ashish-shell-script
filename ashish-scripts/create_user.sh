#!/bin/bash

<< ussage
- take user Name as a input
- take password as input
- check if user already exists
- create the user
ussage

# function definition
create_user() {
read -p "Enter the user name:" username
read -p "Enter the password:" password

if id "$username" &>/dev/null; then
	echo "The user $username already exists."
	exit 1
else
	echo "The user $username does not exists."
	
sudo useradd -m $username -p $password

echo "The user $username added successfully"

fi
}


