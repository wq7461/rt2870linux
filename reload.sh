#!/bin/sh

echo "Putting wireless device down"
ifconfig ra0 down
echo "Removing driver module"
rmmod rt2870sta
echo "Loading driver module"
insmod ./os/linux/rt2870sta.ko
echo "Putting wireless device up"
ifconfig ra0 up
