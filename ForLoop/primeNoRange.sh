#!/bin/bash

read -p "Enter a number :: " n1
read -p "Enter the end point :: " n2
for ((n=n1; n<=n2; n++))
do
	flag=0
	for (( i=2; i<=n/2; i++ ))
	do
		if [ $((n%i)) -eq 0 ]
		then
			flag=1
		fi
	done
	if [ $flag -eq 0 ]
	then
			echo $n
	fi
done
