#!/bin/bash -x

read -p "Enter a number ::" n

for ((i=0; i<=n; i++))
do
	if [ $i == 0 ]
	then
		power=1
	else
		power=$(($power*2))
	fi
done
echo $power
