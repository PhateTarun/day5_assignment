#!/bin/bash -x

# as RANDOM%7 can generate 0,therefore we need to add 1 and do %6 
# to get numbers b/w 6 and 1-6
diceNumber_1=$((1+RANDOM%6)) 
diceNumber_2=$((1+RANDOM%6)) 

addDiceNumber=$(( $diceNumber_1+$diceNumber_2))
