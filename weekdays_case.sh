#!/bin/bash -x

read -p "Enter week day number b/w 1-7 : " weekday
case $weekday in
	1) echo "Sunday"
		;;
	2) echo "Monday"
		;;
	3) echo "Tuesday" 
		;;
	4) echo "Wednesday"
		;;
	5) echo "Thrusday" 
		;;
	6) echo "Friday"
		;;
	7) echo "Saturday" 
		;;
	*) echo "not a valid number for a week" 
		;;
esac
