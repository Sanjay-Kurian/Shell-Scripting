#!/bin/bash -x
declare -A month
for((i=0;i<50;i++))
do
	xyz=$(((RANDOM%12)+1))
	if [ $xyz -eq 1 ]
	then
		((month[January]++))
	elif [ $xyz -eq 2 ]
	then
		((month[February]++))
	elif [ $xyz -eq 3 ]
   then
      ((month[March]++))
	 elif [ $xyz -eq 4 ]
   then
      ((month[April]++))
	 elif [ $xyz -eq 5 ]
   then
      ((month[May]++))
	 elif [ $xyz -eq 6 ]
   then
      ((month[June]++))
	 elif [ $xyz -eq 7 ]
   then
      ((month[July]++))
	 elif [ $xyz -eq 8 ]
   then
      ((month[August]++))
	 elif [ $xyz -eq 9 ]
   then
      ((month[September]++))
	 elif [ $xyz -eq 10 ]
   then
      ((month[October]++))
	 elif [ $xyz -eq 11 ]
   then
      ((month[November]++))
	 elif [ $xyz -eq 12 ]
   then
      ((month[December]++))
	fi
done
echo "People born on January:" ${month[January]}
echo "People born on February:" ${month[February]}
echo "People born on March:" ${month[March]}
echo "People born on April:" ${month[April]}
echo "People born on May:" ${month[May]}
echo "People born on June:" ${month[June]}
echo "People born on July:" ${month[July]}
echo "People born on August:" ${month[August]}
echo "People born on September:" ${month[September]}
echo "People born on October:" ${month[October]}
echo "People born on November" ${month[November]}
echo "People born on December:" ${month[December]}
