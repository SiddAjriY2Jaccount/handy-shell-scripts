#Shell script to recover ethernet IP address

#!bin/bash

enp="$(ifconfig | grep 'enp' | head -1 | cut -d ' ' -f 1)"
#echo $enp
inet="$(ifconfig | grep -A 1 "${enp}" | grep 'inet' | cut -d ':' -f 2 | cut -d ' ' -f 1)"
echo $inet

# Both work:
# ifconfig | grep -A 1 'enp0s18f2u6' | grep 'inet' | cut -d ':' -f 2 | cut -d ' ' -f 1
# ifconfig | grep -A 1 enp0s18f2u6 | grep inet | cut -d : -f 2 | cut -d ' ' -f 1
