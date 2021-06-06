#!/bin/bash -x
read -p "Enter a number" x
function prime()
{
	count=0
	for((i=2;i<=$1;i++))
	do
		if [ $(($1%$i)) -eq 0 ]
		then
			((count++))
		fi
	done
	if [ $count -eq 1 ]
	then
		echo 1
	else
		echo 0
	fi
}
function palindrome()
{
	d=0
	x=$1
	while [ $x -gt 0 ]
	do
		r=$(($x%10))
		d=$((($d*10)+$r))
		x=$(($x/10))
	done
	if [ $d -eq $1 ]
	then
		echo 1
	else
		echo 0
	fi
}
val1="$(prime $x)"
val2="$(palindrome $x)"
if [[ $val1 -eq 1 && $val2 -eq 1 ]]
then
	echo "The given number is prime and palindrome"
elif [[ $val1 -eq 1 && $val2 -ne 1 ]]
then
	echo "The given number is prime but not a palindrome"
elif [[ $val2 -eq 1 && $val1 -ne 1 ]]
then
	echo "The given number is palindrome but not a prime"
else
	echo "The given number is neither prime nor palindrome"
fi
