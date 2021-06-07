#!/bin/bash -x
declare -A die
while [[ die[1] -ne 10 && die[2] -ne 10 && die[3] -ne 10 && die[4] -ne 10 && die[5] -ne 10 && die[6] -ne 10 ]]
do
	xyz=$(((RANDOM%6)+1))
	if [ $xyz -eq 1 ]
	then
		((die[1]++))
	elif [ $xyz -eq 2 ]
	then
		((die[2]++))
	elif [ $xyz -eq 3 ]
   then
      ((die[3]++))
	elif [ $xyz -eq 4 ]
   then
      ((die[4]++))
	elif [ $xyz -eq 5 ]
   then
      ((die[5]++))
	elif [ $xyz -eq 6 ]
   then
      ((die[6]++))
	fi
done
min1=9
for((i=1;i<=6;i++))
do
	if [ ${die[$i]} -eq 10 ]
	then
		max=$i
	elif [ ${die[$i]} -lt $min1 ]
	then
		min1=${die[$i]}
		min=$i
	fi
done
echo ${die[@]}
echo "The largest occurance is" $max
echo "The least occurance is" $min
