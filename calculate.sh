#!/bin/bash

while [[ true ]]
do
	read a b c
	if [[ $a == "exit" ]]
	then
		echo "bye"
		break
	elif [[ $b == "+" || $b == "-" || $b == "*" || $b == "/" || $b == "%" || $b == "**" ]]
	then
		case $b in
			"+") let "value = a + c";;
			"-") let "value = a - c";;
			"*") let "value = a * c";;
			"/") let "value = a / c";;
			"%") let "value = a % c";;
       			"**") let "value = a ** c";;
		esac 
		echo "$value"
	else
		echo "error"
		break
	fi
done
