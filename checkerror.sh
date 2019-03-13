#!/bin/bash
# Check Error Script
echo "Try to find out some errors!!!"
# Seach for the words which can be matched by regex [^a].*ce
echo "The regex [^a].*ce can match the string(s):" > Result
# And append matched strings to file "Result"
cat << START | grep '^[^a].*ce$' > Result
ice
absence
lance
ace
brace
decide
piece
START
# Then append the output of command simple.sh to file “Result”
./simple.sh >> Result
# Show current system date
# And send the content in "Result" to your emailbox
# $1 is replaced by your campusID
date
# $1 is replaced by your campusID
echo The result has been sent to $1@student.gsu.edu
echo "Congratulations! You have corrected all the errors!"
