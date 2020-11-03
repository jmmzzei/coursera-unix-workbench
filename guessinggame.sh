#!/usr/bin/env bash
function ask() {
	read -p "Try again: " USERINPUT
	if [[ -z $USERINPUT ]]; then
		echo The input cannot be blank.	
	fi
}

COUNT=$(ls | wc -l)
echo How many files are in this directory? 
read -p "Insert a value: " USERINPUT

while [[ $COUNT -ne $USERINPUT ]]; do
	if  ! [[ $USERINPUT =~ [0-9] ]]; then
		echo Insert a number	
	else 
		if [[ $COUNT -gt $USERINPUT ]]; then
			echo Too small! 
		elif [[ $COUNT -lt $USERINPUT ]]; then
			echo Too big! 
		fi	
	fi
	ask
done

echo Yes! There are $COUNT files in this directory. 
