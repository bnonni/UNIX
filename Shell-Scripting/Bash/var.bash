#!/bin/bash
x=1
while(( $x <= 10 )) 
do
 echo $x
 x=$(( x+1 ))
done
echo All Done
