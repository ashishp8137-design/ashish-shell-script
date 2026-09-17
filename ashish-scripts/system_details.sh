#!/bin/bash

check_memory() {

 	free -h | awk 'NR==2 {print$6}'

}


check_storage() {

	df -h | awk 'NR==2{print$4}'
}


check_most_mem_consuming() {
	ps aux --sort=-%mem | awk 'NR==2 {print$1,$2,$4}'
}

show_details(){

	echo " ======= SYSTEM DETAILS ======="
	echo "Available Memory"
	check_memory
	echo "Available Storage"
	check_storage
	echo "Most memory intensive process"
	check_most_mem_consuming

}

show_details

