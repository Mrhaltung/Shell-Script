#!/bin/bash

read -p "Enter a number :: " n
result=0
echo $n
for ((i=1; i<=n; i++))
do
	div=`awk 'BEGIN {print '1' / '$i'}'`
	result=`awk 'BEGIN {print '$result' + '$div'}'`
done
echo "$result this is harmonic number"
