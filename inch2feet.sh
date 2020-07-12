#!/bin/bash -x

inch=42
inch_2_feet=12
feet=`expr $inch/$inch_2_feet | bc -l`

