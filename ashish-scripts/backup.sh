#!/bin/bash

<< readme
This is a script for backup with 5days rotation

ussage:
./backup.sh<path to your source> <path to backup folder>

readme

display_usage() {
	echo "Ussage: ./backup.sh <path to your source> <path to your backup folder>"

}

if [ $# -eq 0 ]; then
	
	display_usage
	
	exit 1
fi

source_dir=$1
backup_dir=$2
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

create_backup() {
	
	zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}"

	if [ $? -eq 0 ]; then
	
		echo "backup generated successfully ${timestamp}"
	fi
}

create_backup
