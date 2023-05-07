#!/bin/bash

# Define and save file
echo "Add reboot to root crontab..."
(sudo crontab -l ; echo "0 4   *   *   *    /sbin/shutdown -r +5") | sudo crontab - > /dev/null
echo "Add reboot to root crontab finished!"
