#!/bin/bash

read -p "Enter a number :: " n

factorial=1

for ((i=1; i<=n; i++))
 do
	factorial=`awk 'BEGIN {print '$factorial' * '$i'}'`
 done

echo "$factorial this is $n factorial number"
