#!/bin/bash -x

read -p "Enter a number :: " n

counter=0

while (( $counter<=n ))
do
		if [ $counter == 0 ]
		then
				power=1
		else
				power=$(($power*2))
		fi
		echo $power
		if [ $power == 256 ]
		then
				break
		fi
		counter=$((counter+1))
done
