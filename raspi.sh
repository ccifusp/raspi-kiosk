#!/bin/bash

apt-get purge wolfram-engine scratch scratch2 nuscratch sonic-pi idle3 smartsim java-common minecraft-pi libreoffice* -y

apt-get autoclean
apt-get autoremove -y

apt-get update
apt-get full-upgrade -y

apt-get install xdotool unclutter sed -y

# Enable autologin
# 3 Boot Options -> B1 Desktop / CLI -> B4 Desktop Autologin
raspi-config
