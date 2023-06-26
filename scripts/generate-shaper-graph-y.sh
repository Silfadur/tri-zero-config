#!/bin/bash

NEWY=$(ls -Art /tmp/resonances_y_*.csv | tail -n 1)
DATE=$(date +'%Y-%m-%d-%H%M%S')
if [ ! -d "/home/biqu/printer_data/config/input_shaper" ]
then
    mkdir /home/biqu/printer_data/config/input_shaper
    chown biqu:biqu /home/biqu/printer_data/config/input_shaper
fi

~/klipper/scripts/calibrate_shaper.py $NEWY -o /home/biqu/printer_data/config/input_shaper/resonances_y_$DATE.png
