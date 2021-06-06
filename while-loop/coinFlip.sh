#!/bin/bash -x
heads=0
tails=0
while [[ heads -lt 11 && tails -lt 11 ]]
do
	toss=$((RANDOM%2))
	if [ $toss == 0 ]
	then
		echo "heads"
		((heads++))
	else
		echo "tails"
		((tails++))
	fi
done
