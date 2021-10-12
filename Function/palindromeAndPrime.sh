#!/bin/bash
check_palindrome()
{
   n=$1
   rev=$n
   p=0
   while [ $n -ne 0 ]
   do
      digit=$((n%10))
		p=$(((p*10)+digit))
		n=$((n/10))
   done
	echo "Reverse number is $p"
   if [ $rev -eq $p ]
   then
         echo "$1 Number is palindrome"
   else
         echo "$1 Number is not palindrome"
   fi
}
check_prime()
{
	n=$1
	flag=0
	for (( i=2; i<=n/2; i++))
	do
			if [ $((num%i)) -eq 0 ]
			then
					flag=1
			fi
	done
	if [ $flag == 0 ]
	then
			echo "is a prime no"
	else
			echo "is not prime no"
	fi
}
echo "Enter the number u want to check ::"
read t
check_prime $t
check_palindrom $t
if [ $p -gt 0 ]
then
		check_prime $p
fi
