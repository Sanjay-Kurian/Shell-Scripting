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
small=999
small1=999
large=100
large1=100
for((j=0;j<10;j++))
do
	if [[ arr[$j] -lt $small ]]
	then
		small1=$small
		small=${arr[$j]}
	elif [[ arr[$j] -lt $small1 && arr[$j] -ne $small ]]
	then
		small1=${arr[$j]}
	fi
done
for((j=0;j<10;j++))
do
   if [[ arr[$j] -gt $large ]]
   then
      large1=$large
      large=${arr[$j]}
   elif [[ arr[$j] -gt $large1 && arr[$j] -ne $large ]]
   then
      large1=${arr[$j]}
   fi
done
echo The second smallest number is $small1
echo The second largest number is $large1
