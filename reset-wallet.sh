#!/bin/bash
systemctl stop ironfishd
sleep 5s
yarn --cwd ~/ironfish/ironfish-cli/ start accounts:rescan --reset
systemctl restart ironfishd ironfishd-miner
systemctl restart cron
echo "$(tput setaf 2)Reset is successful"
