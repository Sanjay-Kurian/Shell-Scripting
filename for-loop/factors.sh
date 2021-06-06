#!/bin/bash -x
read -p "Enter a number" x
temp=$x
for((i=2;i<=$x;i++))
do
	while [ $(($temp%$i)) -eq 0 ]
	do
		echo $i
		temp=$(($temp/$i))
		if [ $temp -eq 1 ]
		then
		break
		fi
	done
done
