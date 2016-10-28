#!/bin/bash

# keeps the livestream up and running
while true; do
case "$1" in
ch1)
# mobile_240p / mobile_360p / mobile_480p / mobile_720p
/usr/local/bin/livestreamer http://ustream.tv/channel/iss-hdev-payload worst --player omxplayer --fifo --player-args "--win '0 240 400 480' --timeout 20 --live {filename}"
;;
ch2)
# mobile_284p / mobile_426p / mobile_480p
/usr/local/bin/livestreamer http://ustream.tv/channel/live-iss-stream worst --player omxplayer --fifo --player-args "--win '400 240 800 480' --timeout 20 --live {filename}"
;;
ch3)
# mobile_240p / mobile_360p / mobile_480p / mobile_720p
/usr/local/bin/livestreamer http://ustream.tv/channel/nasa-hd-tv worst --player omxplayer --fifo --player-args "--win '400 0 800 240' --timeout 20 --live {filename}"
;;
esac
done
