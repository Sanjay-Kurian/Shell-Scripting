#!/bin/bash -x
i=0
arr[((i++))]=$((RANDOM%1000))
arr[((i++))]=$((RANDOM%1000))
arr[((i++))]=$((RANDOM%1000))
arr[((i++))]=$((RANDOM%1000))
arr[((i++))]=$((RANDOM%1000))
arr[((i++))]=$((RANDOM%1000))
arr[((i++))]=$((RANDOM%1000))
arr[((i++))]=$((RANDOM%1000))
arr[((i++))]=$((RANDOM%1000))
arr[((i++))]=$((RANDOM%1000))
for((j=0;j<10;j++))
do
	for ((k=j+1;k<10;k++))
	do
		if [[ arr[$j] -gt arr[$k] ]]
		then
			temp=${arr[$j]}
			arr[$j]=${arr[$k]}
			arr[$k]=$temp
		fi
	done
done
echo The sorted array is ${arr[@]}
echo The second smallest number is ${arr[1]}
echo The second largest number is ${arr[8]}
