#!/bin/bash
# screen_display.sh
# 2019-08-28 david@insightcapital.io
# set screen

# https://askubuntu.com/questions/73007/cant-set-a-higher-screen-resolution-in-a-external-display-in-a-dell-mini-10v-la

# To find id of monitors
xrandr --listactivemonitors

cvt 3840 2160

xrandr --newmode "3840x2160_60.00"  712.75  3840 4160 4576 5312  2160 2163 2168 2237 -hsync +vsync
xrandr --addmode DP-1 3840x2160_60.00
