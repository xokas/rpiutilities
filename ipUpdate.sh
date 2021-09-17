#!/bin/bash
#bash /home/pi/scripts/telegram.sh "empezando ipUpdate"
dt=$(date +'%Y%m%d %H:%M')
echo "$dt"
if pgrep -f "ipUpdate.pl" &>/dev/null; 
then
MENSAJE="ipUpdate running"
else
/home/pi/exitdns/dnsexit/ipUpdate.pl
MENSAJE="ipUpdate restart"
fi

echo "$MENSAJE"
bash /home/pi/scripts/telegram.sh "$MENSAJE"

