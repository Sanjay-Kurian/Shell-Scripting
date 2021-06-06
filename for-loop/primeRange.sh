#!/bin/bash -x
read -p "Enter range" n
for ((i=1;i<=$n;i++))
do
	count=0
	for ((j=1;j<=$i;j++))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			((count++))
		fi
	done
if [ $count -eq 2 ]
then
	echo $i
fi
done
