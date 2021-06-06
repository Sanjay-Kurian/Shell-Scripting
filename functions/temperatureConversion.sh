#!/bin/bash -x
read -p "Enter 1 to convert to degf and 2 to convert to degc" x
case $x in
	1)
		read -p "Enter value in degC" degC
		degF=$(((($degC*9)/5)+32))
		echo $degF
	;;
	2)
		read -p "Enter value in degF" degF
		degC=$(((($degF-32)*5)/9))
		echo $degC
	;;
esac


