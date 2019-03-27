#!/bin/sh
read -p "Enter the value of n: " n
count=2
while [ $count -le $n ]
  do
    prime=1
    i=2
    while [ $i -lt $count ]
    do 
        check=`expr $count % $i`
        if [ $check -eq 0 ]
        then
        prime=0
        fi
        i=`expr $i + 1`
    done
  if [ $prime -ne 0 ]
  then
    list="$list $count"
  fi
count=`expr $count + 1`
done
echo "First $n prime numbers are: $list"