#!/bin/bash

PROFILE=$(powerprofilesctl get)

case $PROFILE in
  "power-saver")
    echo '{"text": "", "tooltip": "Power Saver Mode", "class": "power-saver"}'
    ;;
  "balanced")
    echo '{"text": "", "tooltip": "Balanced Mode", "class": "balanced"}'
    ;;
  "performance")
    echo '{"text": "", "tooltip": "Performance Mode", "class": "performance"}'
    ;;
  *)
    echo '{"text": "", "tooltip": "Unknown Power Mode", "class": "unknown"}'
    ;;
esac
