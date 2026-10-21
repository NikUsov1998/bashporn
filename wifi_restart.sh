#!/bin/bash

INTERFACE="wlp2s4"
CONFIG_FILE="/etc/wpa_supplicant/wpa_supplicant.conf"

sudo rfkill unblock all
sleep 3
sudo rmmod ipw2200
sleep 3
sudo modprobe ipw2200
sleep 3
sudo pkill wpa_supplicant
sudo wpa_supplicant -B -i $INTERFACE -D wext -c $CONFIG_FILE
sleep 3
wpa_cli -i $INTERFACE status
