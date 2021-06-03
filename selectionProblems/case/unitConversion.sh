#!/bin/bash -x
read -p "Enter 1 to convert Feet to Inch. Enter 2 to convert Feet to Meter. Enter 3 to convert Inch to Feet. Enter 4 to convert Meter to Feet." x
case $x in
	1)
		read -p "Enter unit in feet" y
		echo "The unit in inches is" $(($y*12))
	;;
	2)
		read -p "Enter unit in feet" y
		echo "The unit in meters is" $(($y/3))
	;;
	3)
		read -p "Enter unit in inches" y
		echo "The unit in feet is" $(($y/12))
	;;
	4)
		read -p "Enter unit in meters" y
		echo "The unit in feet is" $(($y*3))
	;;
esac
