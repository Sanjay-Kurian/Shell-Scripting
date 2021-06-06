#!/bin/bash -x
read -p "Enter a number from 1 to 100" x
l=1
r=100
while [ $l -le $r ]
do
	mid=$((($l+$r)/2))
	if [ $x -eq $mid ]
	then
		echo $mid is the magic number
		break
	elif [ $x -gt $mid ]
	then
		l=$(($mid+1))
	else
		r=$(($mid-1))
	fi
done
