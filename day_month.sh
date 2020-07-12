#!/bin/bash -x

#reading day and month from user
read -p "Enter day: " day
read -p "Enter month: " month
boolean=0    # giving value 0 to boolean variable, it will change only if condition is true
if [ $month -eq 3 ]
then 
	if [ $day -ge 20 ] && [ $day -lt 32 ]
	then
		boolean=1
	fi
elif [ $month -eq 6 ]
then
	if [ $day -gt 0 ] && [ $day -le 20 ]
        then
		boolean=1                
	fi
elif [ $month -gt 3 ] && [ $month -lt 6 ]
then
	if [ $day -gt 1 ] && [ $day -le 30 ]
	then
		boolean=1
	elif [ $day -eq 31 ] && [ $month -eq 5 ]
	then
		boolean=1
	fi
fi

if [ $boolean -eq 1 ]
then
	echo "True"
else
	echo "False"
fi
