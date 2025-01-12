#!/bin/sh
killall swaync
swaync &
swaync-client -t -op
