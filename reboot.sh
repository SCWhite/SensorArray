#!/bin/bash

sleep 1
[ -f /home/pi/SensorArray/sensor.py ] && {
    /usr/bin/sudo git -C /home/pi/SensorArray fetch --all
    /usr/bin/sudo git -C /home/pi/SensorArray reset --hard origin/master
    /usr/bin/sudo nohup python -u /home/pi/SensorArray/sensor.py &
} || {
    /usr/bin/git clone https://github.com/zihengh1/SensorArray/ /home/pi/SensorArray
    /usr/bin/sudo nohup python -u /home/pi/SensorArray/sensor.py &
}

