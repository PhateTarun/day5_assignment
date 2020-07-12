#!/bin/bash -x

read -p "Enter numbers in power of 10 " powers_of_ten
if [ $powers_of_ten -eq 1 ]
then
	echo "unit"
elif [ $powers_of_ten -eq 10 ]
then
	echo "Ten"
elif [ $powers_of_ten -eq 100 ]
then
   echo "Hundred"
elif [ $powers_of_ten -eq 1000 ]
then
   echo "Thousand"
elif [ $powers_of_ten -eq 10000 ]
then
   echo "Ten Thousand"
elif [ $powers_of_ten -eq 100000 ]
then
   echo "Hundred Thousand'"
else
	echo "Number either not power of 10 or greater than 100000"
fi


