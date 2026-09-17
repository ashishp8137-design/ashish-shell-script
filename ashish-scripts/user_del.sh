#!/bin/bash


for i in {1..5}
do

	read -p "Enter the user name you want for delete:" user_name
	sudo userdel -r -f $user_name
	echo "User $user_name has been deleted."
done
