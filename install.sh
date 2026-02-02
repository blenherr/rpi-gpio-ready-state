#!/bin/sh

# Copy python scripts
echo "Copy python scripts into /usr/bin/"
sudo cp set-gpio-high.py /usr/bin/set-gpio-high.py
sudo cp set-gpio-low.py /usr/bin/set-gpio-low.py

# Copy services
echo "Copy services into /lib/systemd/system/"
sudo cp set-gpio-high.service /lib/systemd/system/set-gpio-high.service
sudo cp set-gpio-low.service /lib/systemd/system/set-gpio-low.service

# Enable services
echo "Enable services"
sudo systemctl enable set-gpio-high.service
sudo systemctl enable set-gpio-low.service

# Done
echo "Done!"
