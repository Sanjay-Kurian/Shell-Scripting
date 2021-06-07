#!/bin/bash -x
echo "The array is"
arr=(5 0 -3 -2 1)
echo $name
for((i=0;i<3;i++))
do
	for((j=0;j<4;j++))
	do
		for((k=0;k<5;k++))
		do
			if [ $((arr[$i]+arr[$j]+arr[$k])) -eq 0 ]
			then
				echo ${arr[$i]},${arr[$j]},${arr[$k]}
			fi
		done
	done
done

