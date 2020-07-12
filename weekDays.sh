#!/bin/bash -x

read -p "Enter week day number b/w 1-7 : " weekday
if [ $weekday -eq 1 ]
then
   echo "Sunday"
elif [ $weekday -eq 2 ]
then
   echo "Monday"
elif [ $weekday -eq 3 ]
then
   echo "Tuesday"
elif [ $weekday -eq 4 ]
then
   echo "Wednesday"
elif [ $weekday -eq 5 ]
then
   echo "Thrusday"
elif [ $weekday -eq 6 ]
then
   echo "Friday"
elif [ $weekday -eq 7 ]
then
   echo "Saturday"
fi

