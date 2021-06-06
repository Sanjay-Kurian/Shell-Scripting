#!/bin/bash -x
num=$1
count=0
for((i=1;i<=$num;i++))
do
	if [ $(($num%$i)) -eq 0 ]
	then
		((count++))
	fi
done
if [ $count -eq 2 ]
then
	echo Prime number
else
	echo Not prime number
fi
