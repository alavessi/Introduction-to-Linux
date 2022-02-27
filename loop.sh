#!/bin/bash

while true
do
	echo "enter your name:"
	read name
	if [[ -z $name ]]
	then
		echo "bye"
		break
	fi

	echo "enter your age:"
	read age
	if [[ $age -eq 0 ]]
	then
		echo "bye"
		break
	fi

	out="$name, your group is "

	if [[ age -le 16 ]]
	then
		group='child'
	elif [[ age -le 25 ]]
	then
		group='youth'
	else
		group='adult'
	fi
	echo $out$group
done
