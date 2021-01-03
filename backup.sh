#!/bin/bash
bash /home/pi/scripts/telegram.sh "empezando backup"
dt=$(date +'%Y%m%d %H:%M')
echo "$dt"
mount /dev/sdc1 /media/pi/usb/ && \
rsync -aEvx --delete-after --exclude-from=/home/pi/scripts/backup-exclude.cnf / /media/pi/usb/pi_backup/ && \
#--log-file=/home/pi/scripts/log/backup_sh.log && \
umount /dev/sdc1
RESULT_BACKUP=$?
MENSAJE_OK="El backup de starbase ha ido OK."
MENSAJE_KO="ERROR, el backup de starbase debe revisarse"

echo "$RESULT_BACKUP"
if [ "$RESULT_BACKUP" -eq "0" ]
then
bash /home/pi/scripts/telegram.sh "$MENSAJE_OK"
else
bash /home/pi/scripts/telegram.sh "$MENSAJE_KO"
fi
