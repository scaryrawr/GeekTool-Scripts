#!/usr/bin/env bash

curl --silent "http://xml.weather.yahoo.com/forecastrss?p=USFL0311&u=f" | grep -E '(Current Conditions:|F<BR)' | sed -e 's/Current Conditions://' -e 's/<br \/>//' -e 's/<b>//' -e 's/<\/b>//' -e 's/<BR \/>//' -e 's///' -e 's/<\/description>//'

