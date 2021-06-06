#!/bin/bash -x
echo The range should be from 0-100
read -p "Enter lower range" l
read -p "Enter upper range" u
j=0
function palindrome()
{
	temp=$1
	d=0
	while [ $temp -gt 0 ]
	do
		r=$(($temp%10))
		d=$((($d*10)+$r))
		temp=$(($temp/10))
	done
	if [ $d -eq $1 ]
	then
		echo 1
	else
		echo 0
	fi
}
for((i=l;i<=u;i++))
do
	val="$(palindrome $i)"
	if [ $val -eq 1 ]
	then
		arr[((j++))]=$i
	fi
done
echo "The numbers with repeated digits in the given range are" ${arr[@]}
