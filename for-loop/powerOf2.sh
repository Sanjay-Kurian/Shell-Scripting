#!/bin/bash -x
x=$1
for ((i=0;i<=$x;i++))
do
	echo $((2**$i))
done
