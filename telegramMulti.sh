#!/bin/bash
source /home/pi/scripts/telegramMulti.cnf
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
echo sending message $1
curl -s -X POST $URL -d chat_id=$ID_JUAKO -d text="$1"
curl -s -X POST $URL -d chat_id=$ID_HENAR -d text="$1"
