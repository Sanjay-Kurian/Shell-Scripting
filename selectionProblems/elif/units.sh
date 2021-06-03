#!/bin/bash -x
read -p "Enter a number like 1,10,100,1000..." x
if [ $x -eq 1 ]
then
	echo One
elif [ $x -eq 10 ]
then
	echo Ten
elif [ $x -eq 100 ]
then
   echo Hundred
elif [ $x -eq 1000 ]
then
   echo Thousand
elif [ $x -eq 10000 ]
then
   echo Ten Thousand
elif [ $x -eq 100000 ]
then
   echo One lakh
elif [ $x -eq 1000000 ]
then
   echo Ten lakh
fi
