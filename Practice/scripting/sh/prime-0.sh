#!/bin/sh
read -p "Enter the value of n: " n
s=3
i=2
while [ $i -le $n ]
do
  s=`expr $s - 1`
  for((j=2; $j <= $s;j++))
  do
    if [ `expr $s % $j` -eq 0 ] ;
    then
      break;
    fi
  if [ $j -eq $s ] ;
  then
    list="$list $s"
    i=`expr $i + 1`
  fi
  s=`expr $s + 1`
  done
done
list="2 3$list"
echo "First $n prime numbers are: $list"
exit 0