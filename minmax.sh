#!/bin/bash -x

min=999; # as upper limit for min should be least 4 digit value
max=100; # lower limit for max should be highest two digit value

for counter in 1 2 3 4 5    # getting 5 random values uisng for loop
do
	random_value=$((100+RANDOM%900)) # random value generated  will be b/w 100-999
	if [ $counter -eq 1 ]
	then 
		min=$random_value
		max=$random_value
	elif  [ $random_value -gt $max ]
	then
		max=$random_value
	elif [ $random_value -lt $min ]
	then	
		min=$random_value
	fi
done
echo "$min is minimum value"
echo "$max is maximum value"

