#!/bin/bash -x

flip_coin=$((RANDOM%2))
if [ $flip_coin -eq 1 ]
then
	echo "head"
else
	echo "tail"
fi
