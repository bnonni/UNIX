#!/bin/bash
x=1
while [ $x -lt 4 ]
do
  echo x=${x}, less than four
  x=`expr $x + 1`
done
