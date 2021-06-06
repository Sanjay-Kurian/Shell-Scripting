#!/bin/bash -x
read -p "Enter a number" x
j=0
temp=$x
for((i=2;i<=$x;i++))
do
	while [ $(($temp%$i)) -eq 0 ]
	do
		arr[((j++))]=$i
		temp=$(($temp/$i))
		if [ $temp -eq 1 ]
		then
		break
		fi
	done
done
echo The array is ${arr[@]}
