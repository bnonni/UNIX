#run this file using awk -F: -f testfile /etc/passwd
{print $1 " home at " $6}
