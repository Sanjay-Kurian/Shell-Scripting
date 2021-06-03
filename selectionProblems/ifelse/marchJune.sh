#!/bin/bash -x
m=$1
d=$2
if [[ m -gt 3 && m -lt 6 ]]
then
	echo true
elif [[ m -eq 3 && d -ge 20 ]]
then
	echo true
elif [[ m -eq 6 && d -le 20 ]]
then
	echo true
else
	echo false
fi
