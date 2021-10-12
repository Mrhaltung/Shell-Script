#!/bin/sh -x

read -p "Enter the Money to Start the Gambler :: " rupee
wincount=0
losscount=0

while ((rupee<200 && rupee>=0))
 do
		win=$((RANDOM%2))
	if [ $win == 0 ]
	then
		rupee=$(($rupee+1))
		wincount=$((wincount+1))
	else
		rupee=$(($rupee-1))
		losscount=$((losscount+1))
	fi
 done

     if [ $rupee == 200 ]
	then
	echo "He/She reach goal"
	else
	echo "He/She broke goal"
     fi

echo "$wincount this is wincount"
echo "$losscount this is losscount"
