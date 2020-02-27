#!/bin/sh
if [[ $# -eq 2 ]]; then
	echo "Correct Number of Arguments"
else
	echo "Incorrect Number of Arguments"
	exit 0;
fi
class="$1"
if [[ -f "$class" ]]; then
	echo "$class File Exist"
else 
	echo "File Does Not Exist"
	exit 0;
fi
user="$2"
name=$(cat classlist | grep -c "$user")
if [[ $name -ne 0 ]];then
	echo "Username already Exist"
	exit 0;
fi
echo "$user" >> classlist
echo "Username Added"

