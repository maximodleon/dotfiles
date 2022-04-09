#!/bin/zsh

OS=$(uname)
MAC="Darwin"
WIFI_IP=""
ETH_IP=""
SSID=""

if [ "$OS" = "$MAC" ]
then
  WIFI_IP=$(netstat -in | rg en0 | awk '{print $4}' | rg '([0-9]{1,3}[\.]){3}[0-9]{1,3}' || echo 'Disconnected')
  ETH_IP=$(netstat -in | rg en5 | awk '{print $4}' | rg '([0-9]{1,3}[\.]){3}[0-9]{1,3}' || echo 'Disconnected')
else
  # WIFI_IP=$(ip addr show dev wlp3s0 | rg -m1 'inet' | rg '([0-9]{1,3}[\.]){3}[0-9]{1,3}' | awk -F '/' '{print $1}' | awk '{print $2}' || echo 'Disconnected') 
  WIFI_IP=$(ip addr show dev wlan0 | rg -m1 'inet' | rg '([0-9]{1,3}[\.]){3}[0-9]{1,3}' | awk -F '/' '{print $1}' | awk '{print $2}' || echo 'Disconnected') 
  ETH_IP=$(ip addr show dev enp0s25 | rg -m1 'inet' || echo '0.0.0.0' | rg '([0-9]{1,3}[\.]){3}[0-9]{1,3}' | awk -F '/' '{print $1}' | awk '$1 == "0.0.0.0" {print "Disconnected"; next} {print $2}') 
fi

if [ "$OS" = "$MAC" ]
then
  SSID=$(/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I | awk -F: '/ SSID/ {print $2}' || echo 'Offline')
else
  SSID=$(iw dev wlp3s0 info | rg 'ssid' | awk '{print $2}')
fi


echo "  $SSID | $WIFI_IP #[fg=#c6c8d1,bg=#2e3244]  $ETH_IP" 
