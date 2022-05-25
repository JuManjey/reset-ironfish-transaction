#!/bin/bash
systemctl stop ironfishd
yarn --cwd ~/ironfish/ironfish-cli/ start accounts:rescan --reset
#yarn --cwd ~/ironfish/ironfish-cli/ start chain:repair --force --confirm
yarn --cwd ~/ironfish/ironfish-cli/ start chain:repair --confirm
systemctl restart ironfishd ironfishd-miner
systemctl restart cron
systemctl status ironfishd ironfishd-miner cron
echo "$(tput setaf 2) Reset is successful"
