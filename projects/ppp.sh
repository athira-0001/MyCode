#!/bin/bash
#
#
for num in {1..100}
do
	flag=1
	for (( i = 2; i < $num; i++ ))
	do
			if [ $(($num % $i)) == 0 ]
			then
				flag=false
				break
			fi;

			
	done
	if [ $flag ==  1 ] && [ $num != 1 ]
	then
			echo "$num"
	fi;
	
done
