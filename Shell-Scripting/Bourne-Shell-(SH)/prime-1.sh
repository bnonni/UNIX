#!/bin/sh
read -p "Enter the value of n: " n
f=$n
for x in $(seq 2 $n)
do
  for i in $(seq 3 $x)
  do
    if [ `expr $x % $i` -eq 0 ]
    then
      break 
    else
      list="$list $x"
    fi
  done
done
echo "First $f prime numbers are: $list"
