#!/bin/bash
systemctl stop ironfishd
ironfish accounts:rescan --reset
systemctl restart ironfishd ironfishd-miner
systemctl restart cron
systemctl status ironfishd ironfishd-miner cron
echo "Reset is successful"
