#!/usr/local/bin/bash

cpuUsage=`top -l 2 -F -R | awk '/CPU usage/ && NR > 5 {printf "%d", $7+0}'`
#cpuUsage=`expr 100 - ${cpuUsage}`

typeset -i c=5

echo -ne "\033[1;30m"

while [ ${c} -lt ${cpuUsage} ]
do
    echo -ne "––––\n\c"
    c=`expr ${c} + 5`
done

echo -ne "\033[1;31m––––\033[0m\c\033[0m"

while [ ${c} -lt 100 ]
do
    echo -ne "\n––––"
    c=`expr ${c} + 5`
done
echo ""
unset cpuUsage
unset c
