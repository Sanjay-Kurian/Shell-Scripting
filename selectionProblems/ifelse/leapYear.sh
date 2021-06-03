#!/bin/bash -x
read -p "Enter year" x
if [ $(($x % 400)) -eq 0 ]
then
	echo Leap year
elif [ $(($x % 100)) -eq 0 ]
then
	echo Not a leap year
elif [ $(($x % 4)) -eq 0 ]
then
	echo Leap year
else
	echo Not a leap year
fi
