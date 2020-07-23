#!/bin/bash
source /home/pi/scripts/telegram.cnf
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
echo sending message $1
curl -s -X POST $URL -d chat_id=$ID -d text="$1"
