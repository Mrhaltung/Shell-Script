#!/bin/bash -x

x=0
for (( i=0; i<=100; i++ ))
do
		if [ $(($i%11)) == 0 ]
		then
				arr[x++]=$i
		fi
done
echo "${arr[@]}"
