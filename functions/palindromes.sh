#!/bin/bash -x
read -p "Enter a number" x
read -p "Enter another number" y
function palindrome()
{
	if [ $1 -eq $2 ]
	then
		echo 1
	else
		echo 0
	fi
}
val="$( palindrome $x $y )"
if [ $val -eq 1 ]
then
	echo "The 2 numbers are palindromes"
else
	echo "The 2 numbers are not palindromes"
fi
