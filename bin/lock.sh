#!/bin/bash

~/.local/bin/betterlockscreen -l
/usr/bin/pkill xautolock
xautolock -time 5 -locker 'systemctl suspend' &
