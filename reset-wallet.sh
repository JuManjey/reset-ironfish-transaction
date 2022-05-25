#!/bin/bash
systemctl stop ironfishd
yarn --cwd ~/ironfish/ironfish-cli/ start accounts:rescan --reset
yarn --cwd ~/ironfish/ironfish-cli/ start chain:repair --force --confirm
yarn --cwd ~/ironfish/ironfish-cli/ start chain:repair
systemctl restart ironfishd ironfishd-miner
systemctl restart cron
systemctl status ironfishd ironfishd-miner cron
echo "Reset is successful"
