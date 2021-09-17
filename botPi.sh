#!/bin/bash
#bash /home/pi/scripts/telegram.sh "empezando ipUpdate"
dt=$(date +'%Y%m%d %H:%M')
echo "$dt"
if pgrep -f "python /home/pi/python/pyTelegramBotAPI/bot_pi.py" &>/dev/null; then
	MENSAJE="bot_pi running"
else
	python /home/pi/python/pyTelegramBotAPI/bot_pi.py &
	MENSAJE="bot_pi relaunch"
fi

echo "$MENSAJE"
bash /home/pi/scripts/telegram.sh "$MENSAJE"

