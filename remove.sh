#!/bin/sh

FILENAME="rpi-state-set-gpio"

# Disable services
echo "Disable services"
sudo systemctl disable $FILENAME-high.service
sudo systemctl disable $FILENAME-low.service

# Remove services
echo "Remove services from /lib/systemd/system/"
sudo rm /lib/systemd/system/$FILENAME-high.service
sudo rm /lib/systemd/system/$FILENAME-low.service

# Remove python scripts
echo "Remove python scripts from /usr/bin/"
sudo rm /usr/bin/$FILENAME-high.py
sudo rm /usr/bin/$FILENAME-low.py

# Reload deamon
echo "Reload deamon"
sudo systemctl daemon-reload

# Done
echo "Done!"
