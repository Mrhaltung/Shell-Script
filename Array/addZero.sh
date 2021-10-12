#!/bin/bash
arr=(0 -1 2 -3 1)
echo "Array Elements :: { " ${arr[@]} " }"
size=${#arr[@]}
flag=1
for (( i=0; i<$size-2; i++ ))
do
		for (( j=$i+1; j<$size; j++ ))
		do
				for (( k=$j+1; k<$size; k++ ))
				do
						sum=$((${arr[$i]}+${arr[$j]}+${arr[$k]}))
						if [ $sum == 0 ]
						then
								echo "Elememnts are : ${arr[$i]} ${arr[$j]} ${arr[$k]}"
								flag=0
						fi
				done
		done
done
if [ flag == 1 ]
then
		echo "The elements are not found"
fi
