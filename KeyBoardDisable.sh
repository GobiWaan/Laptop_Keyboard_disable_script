#!/bin/bash

TOUCHPAD='ELAN1301:00 04F3:3115 Touchpad'
KEYBOARD='AT Translated Set 2 keyboard'
state=$(xinput list-props "$TOUCHPAD" | grep "Device Enabled" | grep -o "[01]$")

if [ $state == '1' ];then
  xinput --disable "$TOUCHPAD"
  xinput --disable "$KEYBOARD"
else
  xinput --enable "$TOUCHPAD"
  xinput --enable "$KEYBOARD"
fi
