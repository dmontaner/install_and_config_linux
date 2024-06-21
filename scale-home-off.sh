#!/bin/bash
# scale-home-on.sh
# 2019-09-17 david@insightcapital.io
# scale resolution for my home screen

# https://askubuntu.com/questions/1029436/enable-fractional-scaling-for-ubuntu-18-04
# https://askubuntu.com/questions/60044/how-do-i-change-the-font-dpi-settings

# valores originales
# $ gsettings get org.gnome.desktop.interface text-scaling-factor
# 1.0

gsettings set org.gnome.desktop.interface text-scaling-factor 1.25
