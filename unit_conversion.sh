#!/bin/bash -x

echo "For the conversion choose one of these options"
echo "1. Feet to inch"
echo "2. inch to Feet"
echo "3. Feet to meter"
echo "4. meter to Feet "
read -p "Enter option: " option

case $option in 
	1) echo "you chose feet to inch"
		read -p "Enter value in feet: " feet
		inch=$(( $feet*12 ))
		;;
   2) echo "you chose inch to feet"
		read -p "Enter value in inch: " inch
		feet=`expr $inch/12 | bc -l`
		;;
	3)	echo "you chose feet to meter"
		read -p "Enter value in feet: " feet
		meter=`expr $feet/3.2808 | bc -l`
		;;
	4) echo "you chose meter to feet"
		read -p "Enter value in meter: " meter
		feet=`expr "$meter*3.2808" | bc`
		;;
	*) echo "option invalid"
		;;
esac


