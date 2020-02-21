# Hello World Program in Bash Shell

#!bin/bash

#Retrieve by using grep, cut etc.

#ipeth="192.168.0.1"
#ipwifi="1500"

# To get INET of Ethernet
enp="$(ifconfig | grep 'enp' | head -1 | cut -d ' ' -f 1)"
ipeth="$(ifconfig | grep -A 1 "${enp}" | grep 'inet' | cut -d ':' -f 2 | cut -d ' ' -f 1)"

ipwifi="$(ifconfig | grep -A 1 'wl' | tail -1 | cut -d : -f 2 | cut -d ' ' -f 1 | cut -d ' ' -f 1)"
leth=${#ipeth}
lwifi=${#ipwifi}



echo $ipeth
echo $leth
echo $ipwifi
echo $lwifi

if [ $leth -lt 1 ]
then
    echo "No chance of ethernet connection, check for wifi connection"
    if [ $lwifi -gt 10 ]
    then
        echo "WIFI connected"
    else
    echo "NEITHER connection happened"
    fi
else
echo "ETHERNET connected"
fi
