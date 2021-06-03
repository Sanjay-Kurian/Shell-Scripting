#!/bin/bash -x
num1=$((RANDOM%1000))
num2=$((RANDOM%1000))
num3=$((RANDOM%1000))
num4=$((RANDOM%1000))
num5=$((RANDOM%1000))
if [[ $num1 -ge $num2 && $num1 -ge $num3 && $num1 -ge $num4 && $num1 -ge $num5 ]]
then
	echo max=$num1
elif [[ $num2 -ge $num1 && $num2 -ge $num3 && $num2 -ge $num4 && $num2 -ge $num5 ]]
then
	echo max=$num2
elif [[ $num3 -ge $num1 && $num3 -ge $num2 && $num3 -ge $num4 && $num3 -ge $num5 ]]
then
	echo max=$num3
elif [[ $num4 -ge $num1 && $num4 -ge $num2 && $num4 -ge $num3 && $num4 -ge $num5 ]]
then
	echo max=$num4
else
	echo max=$num5
fi
