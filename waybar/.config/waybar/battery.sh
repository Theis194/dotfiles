#!/bin/bash

BATTERY_CAPACITY=$(cat /sys/class/power_supply/BAT1/capacity)
BATTERY_STATUS=$(cat /sys/class/power_supply/BAT1/status)

# Check if battery is discharging and below 15%
if [ "$BATTERY_STATUS" = "Discharging" ] && [ "$BATTERY_CAPACITY" -le 15 ]; then
    # Send notification
    notify-send -u critical "Battery Critical" "Battery is at ${BATTERY_CAPACITY}%!\nConnect charger immediately."
    
    # Optional: repeat notification every 2 minutes if still critical
    sleep 120
    if [ "$(cat /sys/class/power_supply/BAT0/capacity)" -le 15 ]; then
        notify-send -u critical "Battery Still Critical" "Battery at ${BATTERY_CAPACITY}%!"
    fi
fi
