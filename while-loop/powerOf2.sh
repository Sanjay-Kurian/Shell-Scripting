#!/bin/bash -x
num=$1
i=0
while [[ pow -lt 256 && i -le $num ]]
do
	pow=$((2**$i))
	echo $pow
	((i++))
done
