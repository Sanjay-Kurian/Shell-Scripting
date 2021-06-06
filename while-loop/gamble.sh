#!/bin/bash -x
total=100
won=0
loss=0
while [[ $total -ne 0 && $total -ne  120 ]]
do
	random=$((RANDOM%2))
	if [ $random -eq 0 ]
	then
		((won++))
		total=$(($total+1))
	else
		((loss++))
		total=$(($total-1))
	fi
echo "Won:"$won
echo "Loss:"$loss
done
