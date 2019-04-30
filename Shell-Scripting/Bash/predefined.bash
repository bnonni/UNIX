#!/bin/bash
echo You passed $# parameters.
echo These are: "$@"
echo What is the difference between \$\@ $@ and \$\* $*
echo process ID of last background process = $!
echo process ID of this shell = $$
notAcommand
echo Last command returned with $? as the status.
