#!/bin/bash

gcd()
{
	m=$1
	n=$2
	if [[ m -eq n ]]
	then
		echo "GCD is $m"
		return
	elif [[ $m -gt $n ]]
	then
		let "m -= n"
		gcd $m $n
	else
		let "n -= m"
		gcd $m $n
	fi
}

read m n
while true
do
	if [[ -z $m || -z $n ]]
	then
		echo "bye"
		exit
	else
		gcd $m $n
		read m n
	fi
done

