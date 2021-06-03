#!/bin/bash -x
a=$1
b=$2
c=$3
op1=$(($a + $b * $c))
op2=$(($a % $b + $c))
op3=$(($c + $a / $b))
op4=$(($a * $b + $c))
if [[ $op1 -ge $op2 && $op1 -ge $op3 && $op1 -ge $op4 ]]
then
	echo $op1 is greatest
elif [[ $op2 -ge $op1 && $op2 -ge $op3 && $op2 -ge $op4 ]]
then
   echo $op2 is greatest
elif [[ $op3 -ge $op1 && $op3 -ge $op2 && $op3 -ge $op4 ]]
then
   echo $op3 is greatest
elif [[ $op4 -ge $op1 && $op4 -ge $op2 && $op4 -ge $op3 ]]
then
   echo $op4 is greatest
fi
