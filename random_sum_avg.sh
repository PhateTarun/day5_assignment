#!/bin/bash -x

sum=0
counter=0
while [ $counter -lt 5 ]    # itereating over counter variable till the value is 5
do 
	random_number=$(( 10+RANDOM%89 ))  # getting a random number
	sum=$(($random_number+$sum))  #  adding newly generated number to sum
	((counter++))  # increamenting counter
done
average=`expr $sum/$counter | bc -l`
echo "Sum is $sum"
echo "Average is $average"
