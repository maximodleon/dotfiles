#!/bin/zsh

OS=$(uname)
MAC="Darwin"
SSID=""
if [ "$OS" = "$MAC" ]
then
  SSID=$(/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I | awk -F: '/ SSID/ {print $2}' || echo 'Offline')
else
  SSID=$(iw dev wlp3s0 info | rg 'ssid' | awk '{print $2}')
fi

echo $SSID
