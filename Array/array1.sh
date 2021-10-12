#!/bin/bash -x

for (( i=0; i<10; i++ ))
  do
	a[i]=$((RANDOM%899+100))
  done
      echo "Array of size 10 Is :${a[@]}"

max=0
smax=0
smin=1000
min=1000

for i in ${a[@]}
  do
	if [ $i -gt $max ]
	then
		smax=$max
		max=$i
	elif [ $i -gt $smax ]
	then
		smax=$i
	fi
	if [ $i -lt $min ]
	then
		smin=$min
		min=$i
	elif [ $i -lt $smin ]
	then
		smin=$i
	fi
  done

echo "This is the Second Maximum No of Array : $smax"

echo "This is the Second Minimum No of Array : $smin"
