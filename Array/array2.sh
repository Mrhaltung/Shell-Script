#!/bin/bash -x

n=10

for (( i=0; i<n; i++ ))
  do
	a[i]=$((RANDOM%899+100))
  done

echo "Array Is :${a[@]}"

for (( i=0; i<$n; i++ ))
  do
	for (( j=$i+1; j<$n; j++ ))
	  do
		if [ ${a[j]} -lt ${a[i]} ]
	          then
			temp=${a[i]}
			a[$i]=${a[j]}
			a[$j]=$temp
		  fi
	  done
  done

echo "Sorted Array Is :${a[@]}"

echo "This is the second maximum no of array : ${a[n-2]}"

echo "This is the second minimum no of array : ${a[1]}"
