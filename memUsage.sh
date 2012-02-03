#!/usr/local/bin/bash

#   Get the memory in use.
memUsage=`top -l 1 | awk '/PhysMem/ {printf "%d", $8}'`
memUsage=`expr ${memUsage} \* 100 / 2048`

if [ ${memUsage} -gt 100 ]
then
    memUsage=100
fi

typeset -i m=5

while [ ${m} -lt ${memUsage} ]
do
    echo -ne "——\n\c"
    m=`expr ${m} + 5`
done

echo -ne "\033[1;31m——\033[0m\c"
echo -ne "\033[1;30m"
while [ ${m} -lt 100 ]
do
    echo -ne "\n——"
    m=`expr ${m} + 5`
done
echo -ne "\033[0m"
echo ""
unset memUsage
unset m
