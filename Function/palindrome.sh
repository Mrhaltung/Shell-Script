#!/bin/bash -x

read -p "Enter a number :: " num

function palindrom()
{
	rev=0
	m=$num
	while [ $num -gt 0 ]
	do
		r=`expr $num % 10`
		rev=`expr $rev \* 10 + $r`
		num=`expr $num / 10`
	done

	if [ $m -eq $rev ]
	then
			echo "Number is palindrom"
	else
			echo "Number is not palindrom"
	fi
}

