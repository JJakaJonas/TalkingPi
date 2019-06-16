#!/bin/sh
#
# Script Name: update.sh
#
# Author: JJakaJonas
# Date : 16/06-2019
#
# Description: This file is to update the system on the pi device
#
# Run Information: This script is run automatically every Monday of every week at 00:00hrs from
#                  a crontab entry. 
#

sudo apt-get update && sudo apt-get upgrade -y 
sudo rpi-update -y 
sudo apt-get autoremove 
sudo apt-get autoclean 
sudo reboot
