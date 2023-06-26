#!/bin/bash

NEWX=$(ls -Art /tmp/resonances_x_*.csv | tail -n 1)
DATE=$(date +'%Y-%m-%d-%H%M%S')
if [ ! -d "/home/biqu/printer_data/config/input_shaper" ]
then
    mkdir /home/biqu/printer_data/config/input_shaper
    chown biqu:biqu /home/biqu/printer_data/config/input_shaper
fi

~/klipper/scripts/calibrate_shaper.py $NEWX -o /home/biqu/printer_data/config/input_shaper/resonances_x_$DATE.png
