#!/bin/bash -x

length_ft=60
breadth_ft=40
length_mt=`expr "$length_ft/3.2808" | bc -l`
breadth_mt=`expr "$breadth_ft/3.2808" | bc -l`
area_mt=`expr "$breadth_mt*$length_mt"| bc`



