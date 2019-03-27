#!/bin/sh
read -p "Enter the value of n: " n
/usr/local/bin/gfactor factor {2..$n} | awk 'NF==2{print $2}'
    