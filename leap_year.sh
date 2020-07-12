#!/bin/bash -x

read -p "Enter the year: " year
leap_year=0
if [ $(($year%4)) -eq 0 ] 
then
	if  [ $(($year%100)) -eq 0 ] 
	then
		if [ $(($year%400)) -eq 0 ]
		then
			leap_year=1
		fi
	else
		leap_year=1
	fi
fi
if [ $leap_year -eq 1 ]
then 
	echo "$year is a leap year"
else
	echo "$year is not a leap year"
fi
