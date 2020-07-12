#!/bin/bash -x

read -p "Enter numbers in power of 10 " powers_of_ten
case $powers_of_ten in
	1) echo "unit"
		;;
	10) echo "Ten"
		;;
	100) echo "Hundred"
		;;
	1000) echo "Thousand"
		;;
	10000) echo "Ten Thousand"
		;;
	100000) echo "Hundred Thousand"		
		;;
	*) echo "Number either greater than 100000 or not a power of 10"
esac
