#!/bin/sh
read -p "Enter the value of n: " n
count=2
t=2
a=4
while [ $count -lt $n ]
  do
    if [ `expr $a % $t` -eq 0 ] ;
    then
      a=`expr $a + 1`
    elif [ `expr $a % 3` -eq 0 ] ;
    then
      a=`expr $a + 1`
    else
      list="$list $a"
      a=`expr $a + 1`
      count=`expr $count + 1`
    fi
done
list="2 3$list"
echo "First $n prime numbers are: $list"