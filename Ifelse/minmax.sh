#!/bin/bash -x

digit1=$((RANDOM%999))
digit2=$((RANDOM%999))
digit3=$((RANDOM%999))
digit4=$((RANDOM%999))
digit5=$((RANDOM%999))

if [ $digit1 -ge $digit2 -a $digit1 -ge $digit3 -a $digit1 -ge $digit4 -a $digit1 -ge $digit5 ]
then
   echo "$digit1 is maximum"
elif [ $digit2 -ge $digit3 -a $digit2 -ge $digit4 -a $digit2 -ge $digit5 -a $digit2 -ge $digit1 ]
then
   echo "$digit2 is maximum"
elif [ $digit3 -ge $digit4 -a $digit3 -ge $digit5 -a $digit3 -ge $digit1 -a $digit3 -ge $digit2 ]
then
   echo "$digit3 is maximum"
elif [ $digit4 -ge $digit5 -a $digit4 -ge $digit1 -a $digit4 -ge $digit2 -a $digit4 -ge $digit3 ]
then
   echo "$digit4 is maximum"
elif [ $digit5 -ge $digit1 -a $digit5 -ge $digit2 -a $digit5 -ge $digit3 -a $digit5 -ge $digit4 ]
then
   echo "$digit5 is maximum"
fi


if [ $digit1 -le $digit2 -a $digit1 -le $digit3 -a $digit1 -le $digit4 -a $digit1 -le $digit5 ]
then
	echo "$digit1 is minimum"
elif [ $digit2 -le $digit3 -a $digit2 -le $digit4 -a $digit2 -le $digit5 -a $digit2 -le $digit1 ]
then
	echo "$digit2 is minimum"
elif [ $digit3 -le $digit4 -a $digit3 -le $digit5 -a $digit3 -le $digit1 -a $digit3 -le $digit2 ]
then
	echo "$digit3 is minimum"
elif [ $digit4 -le $digit5 -a $digit4 -le $digit1 -a $digit4 -le $digit2 -a $digit4 -le $digit3 ]
then
	echo "$digit4 is minimum"
elif [ $digit5 -le $digit1 -a $digit5 -le $digit2 -a $digit5 -le $digit3 -a $digit5 -le $digit4 ]
then
	echo "$digit5 is minimum"
fi
