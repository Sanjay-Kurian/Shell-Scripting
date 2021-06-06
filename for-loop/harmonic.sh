#!/bin/bash -x
n=$1
sum=0
for ((i=1;i<=$n;i++))
do
	sum=$(($sum+((1/$i))))
done
echo $sum
