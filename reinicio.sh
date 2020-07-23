#!/bin/bash
dt=$(date +'%Y%m%d %H:%M')
echo "$dt"
MENSAJE="Todos los sistemas de piutilities están online."
bash /home/pi/scripts/telegram.sh "$MENSAJE"
