#!/bin/bash
dt=$(date +'%Y%m%d %H:%M')
echo "$dt"
bash /home/pi/scripts/telegram.sh "Empezando el proceso de update"
apt-get update &&\
apt-get -y upgrade &&\
apt-get clean &&\
apt-get purge
MENSAJE_OK="El UPDATE de StarBase ha ido OK, reiniciamos..."
MENSAJE_KO="ERROR, el update de starbase debe revisarse"

RESULT_UPDATE=$?
if [ "$RESULT_UPDATE" -eq "0" ]
then
bash /home/pi/scripts/telegram.sh "$MENSAJE_OK"
reboot
else
bash /home/pi/scripts/telegram.sh "$MENSAJE_KO"
fi

