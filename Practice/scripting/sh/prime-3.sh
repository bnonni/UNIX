#!/bin/sh
read -p "Enter the value of n: " n
count=2
t=2
a=4
#d=`expr $n \* $n`
while [ $count -lt $n ]
  do
    if [ `expr $a % $t` -eq 0 ] ;
    then
      # echo "If is true. count=$count"
      # echo "a not added: $a"
      a=`expr $a + 1`
    elif [ `expr $a % 3` -eq 0 ] || [ `expr $a % 5` -eq 0 ] || [ `expr $a % 7` -eq 0 ]  || [ `expr $a % 11` -eq 0 ] ;
    then
      # echo "div by 3"
      a=`expr $a + 1`
    else
      # echo "If is false"
      list="$list $a"
      # echo "added a to list: $a"
      a=`expr $a + 1`
      count=`expr $count + 1`
      # echo "count=$count"
      # echo "count up a: $a"
    fi
done
list="2 3$list"
echo "First $n prime numbers are: $list"