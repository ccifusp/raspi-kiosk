#!/bin/bash

apt purge wolfram-engine scratch scratch2 nuscratch sonic-pi idle3 smartsim java-common minecraft-pi libreoffice* -y

apt autoclean
apt autoremove -y

apt update
apt full-upgrade -y

apt install xdotool unclutter sed -y

# Enable autologin
# 3 Boot Options -> B1 Desktop / CLI -> B4 Desktop Autologin
raspi-config
