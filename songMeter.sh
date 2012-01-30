#!/usr/local/bin/bash
#   Get the current song using the script to grab from itunes.
songMeter=`osascript /Users/michael/Projects/GeekTool\ Scripts/SongMeter.scpt`

if [ ${songMeter} != "" ] 
then
    songMeter=`expr 100 - ${songMeter}`
    a=5

    while [ ${a} -lt ${songMeter} ] 
    do
        echo -ne "|\c"
        a=`expr ${a} + 5`
    done

    echo -ne "\033[1;31m|\033[0m\c"

    while [ ${a} -lt 100 ] 
    do
        echo -ne "\033[1;30m|"
        a=`expr ${a} + 5`
    done
    unset songMeter
    unset a
fi
