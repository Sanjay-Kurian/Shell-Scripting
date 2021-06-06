#!/bin/bash -x
read -p "Enter number" x
fact=1
for ((i=$x;i>=1;i--))
do
	fact=$(($fact*$i))
done
echo $fact
