#! /usr/bin/env bash

# disable touchscreen
xinput list | grep "Touchscreen" | tr -d -c [0-9] | cut -c1-2 | xargs xinput disable

## Overwritten in KDE settings
# enable natural scrolling
#TOUCHPAD_ID=$(xinput list | grep "Touchpad" | tr -d -c [0-9] | cut -c1-2)
#SCROLLING_ID=$(xinput list-props $TOUCHPAD_ID | grep "Natural Scrolling" | tr -d -c [0-9] | cut -c1-3)
#xinput set-prop $TOUCHPAD_ID $SCROLLING_ID 1

## Overwritten in KDE settings
# enable tap to click
#TOUCHPAD_ID=$(xinput list | grep "Touchpad" | tr -d -c [0-9] | cut -c1-2)
#TAPPING_ID=$(xinput list-props $TOUCHPAD_ID | grep "Tapping Enabled" | tr -d -c [0-9] | cut -c1-3)
#xinput set-prop $TOUCHPAD_ID $TAPPING_ID 1
