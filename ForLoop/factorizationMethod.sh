#!/bin/bash

read -p "Enter a number :: " n

for ((i=2; i<n; i++))
 do
	factorial=`awk 'BEGIN {print '$n' % '$i'}'`
	if ((factorial==0))
	then
		flag=0
		for (( j=2; j<=i/2; j++ ))
		do
                		if [ $((i%j)) -eq 0 ]
                		then
                    		            flag=1
          		      fi
		done

		if [ $flag -eq 0 ]
		then
          		      echo "$i"
		fi
	fi
 done
