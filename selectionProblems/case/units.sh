#!/bin/bash -x
read -p "Enter a number like 1,10,100,1000..." x
case $x in
	1)
		echo One
	;;
	 10)
      echo Ten
   ;;
	 100)
      echo Hundred
   ;;
	 1000)
      echo Thousand
   ;;
	 10000)
      echo Ten Thousand
   ;;
	 100000)
      echo One lakh
   ;;
	 1000000)
      echo Ten lakh
   ;;
esac
