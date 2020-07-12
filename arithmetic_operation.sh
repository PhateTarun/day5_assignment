#!/bin/bash -x

read -p "Enter number 1: " a
read -p "Enter number 2: " b
read -p "Enter number 3: " c

mul_b_c=$(($b*$c))
mod_a_b=$(($a%$b))
div_a_b=`expr "$a/$b" | bc -l`
mul_a_b=$(($a*$b))

operation_1=$(( $a + $mul_b_c))
operation_2=$(( $mod_a_b + $c ))
operation_3=`expr "$c+$div_a_b" | bc`
operation_4=$(( $mul_a_b + $c))

if [ `expr  "$operation_1 > $operation_2" | bc` ] &&  [ `expr  "$operation_1 > $operation_3" | bc`  ] &&  [ `expr  "$operation_1 > $operation_4" | bc`  ]
then 
	max=$operation_1
	max_counter=1
elif  [ `expr  "$operation_2 > $operation_1" | bc`  ] &&  [ `expr  "$operation_2 > $operation_3" | bc`  ] &&  [ `expr  "$operation_2 > $operation_4" | bc`  ]
then
	max=$operation_2
	max_counter=2
elif [ `expr  "$operation_3 > $operation_1" | bc` ] &&  [ `expr  "$operation_3 > $operation_2" | bc` ] &&  [ `expr  "$operation_1 > $operation_2" | bc` ]
then
	max=$operation_3
	max_counter=3
else 
	max=$operation_4
	max_counter=4
fi

if [ `expr  "$operation_1 < $operation_2" | bc` ] &&  [ `expr  "$operation_1 < $operation_3" | bc`  ] &&  [ `expr  "$operation_1 < $operation_4" | bc`  ]
then 
        min=$operation_1
        min_counter=1
elif  [ `expr  "$operation_2 < $operation_1" | bc`  ] &&  [ `expr  "$operation_2 < $operation_3" | bc`  ] &&  [ `expr  "$operation_2 < $operation_4" | bc`  ]
then
        min=$operation_2
        min_counter=2
elif [ `expr  "$operation_3 < $operation_1" | bc` ] &&  [ `expr  "$operation_3 < $operation_2" | bc` ] &&  [ `expr  "$operation_1 < $operation_2" | bc` ]
then
        min=$operation_3
        min_counter=3
else 
        min=$operation_4
        min_counter=4
fi

echo "Operation $max_counter = $max is maximum"
echo "Operation $min_counter = $min is minimum"



