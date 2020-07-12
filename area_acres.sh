#!/bin/bash -x

length_ft=60
breadth_ft=40
length_mt=`expr "$length_ft/3.2808" | bc -l`
breadth_mt=`expr "$breadth_ft/3.2808" | bc -l`
area_mt=`expr "$breadth_mt*$length_mt"| bc`
number_of_plots=25
area_25_plots=`expr "$area_mt*$number_of_plots"| bc`
mt_2_acres=4046.86
area_in_acres=`expr "$area_25_plots/$mt_2_acres" | bc -l`



