#!/bin/bash
#
#
#echo "enter lower limit"
#read m
#echo "enter upper limit"
#read n

for j in {1..100}
do
	i=2
	flag=1
	while [ $i -lt $j ]
	do
		if [ $(($j % $i)) -eq 0 ]
		then
			flag=0
			break
		else
			i=`expr $i + 1`
		fi
	done
	if [ $flag -eq 1 ] && [ $j != 1 ]
	then
		echo "$j"
	fi
	j=`expr $j + 1`
done
