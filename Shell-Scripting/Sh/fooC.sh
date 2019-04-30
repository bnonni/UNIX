#!/bin/bash
#
#foo.sh in Part C of Lab 6 - Part 1
#

x=0 # initialization x = 0
i=1
echo "please input a number"
read num
while [ $i -le $num ] #while(i<=3)
do
s=`expr $i \* $i` # s=i*i 
x=`expr $s + $x` # x=(i*i)+x
i=`expr $i + 1` # i=i+1
done

echo x=$x
