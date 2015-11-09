#!/bin/bash
# taken from https://help.ubuntu.com/community/SynapticsTouchpad/ShortcutKey
# or https://rog.asus.com/forum/showthread.php?35889-Linux-Tips-and-Tricks
#
# export `xinput list | grep -i touchpad | awk '{ print $6 }'`

TOUCH_ENABLED=`xinput list-props 14 | grep Device\ Enabled | awk '{ print $4 }'`
if [ $TOUCH_ENABLED = 0 ]; then
    xinput --enable 14
elif [ $TOUCH_ENABLED = 1 ]; then
    xinput --disable 14
else
    echo "Could not get touchpad status from xinput."
    exit 1
fi
exit 0
