:fire: GeekTool Scripts :fire:
==============================
Welcome! Here is a collection of scripts that I use with GeekTool. Some need to be update to be less... tied to my desktop.

apple-run.sh
------------
This script is for running AppleScripts from the shell. It expects the AppleScript to be in the same directory as it, and it takes the script as a command line parameter.

cpuUsage.sh
-----------
This script uses the top command to pull CPU Usage information, and then draws vertical colored lines to show how much is in use and how much is free. Should be updated to be more flexible (horizontal lines, how many lines, width/height, etc.).

itunesCurrent.script
--------------------
This script sees if itunes is running, and pulls the current playing song if available. Can be updated to be used with spotify. Use with apple-run.sh.

memUsage.sh
-----------
This script uses the top command to pull memory usage. Had to be updated at some point, but be off... It's also currently hard coded for a 2GB machine (I thought I fixed this!), it's currently off for grabbing the memory usage.

SongMeter.script
----------------
Call songMeter.sh. Script queries track length and current track time from itunes.

songMeter.sh
------------
Calls SongMeter.script. It then draws colored bars to show how far it is into a song.

weather.sh
----------
Grabs weather information for where I use to live in Florida, and shows the temperature (I think... Haven't ran it in forever...).
