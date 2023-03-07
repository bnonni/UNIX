#!/bin/sh

#check command lin
if [ $# -lt 2 ] ; then
 echo "Oops! I need atleast 2 command line args"
 echo "Syntax: $0: number1 number2 ... numberN"
 echo "Example:$0 56 66 34"
 exit 1
fi

for x in $@
do
	res="$res $x"
done

echo "res = $res"
