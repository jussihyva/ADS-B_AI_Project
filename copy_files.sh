#!/usr/bin/bash

IP=$1
FOLDER="readsb"

scp .env pi@${IP}:readsb/
scp docker-compose.yml pi@${IP}:readsb/
ssh pi@${IP} "rm -f ${FOLDER}/04-telegraf"
scp 04-telegraf pi@${IP}:readsb/
ssh pi@${IP} "sudo chown root:root ${FOLDER}/04-telegraf"

