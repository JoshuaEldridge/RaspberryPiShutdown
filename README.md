# RaspberryPiShutdown

I've seen many iterations of shutdown scripts that have been written to
allow a single button push to shutdown the device properly (via sudo halt
or sudo shutdown -now). This repository is an attempt to document and retain
the way that works best for my needs. And of course extra points will be awarded for
style.

I've chosen this script for a couple reasons. First, it uses the awesome gpiozero
library which makes working with GPIO much easier and enjoyable.

There's a install.sh script that should be run as root:

`sudo install.sh`

This script will copy the shutdown-button.py script to /usr/local/bin/ and the 
service file to /etc/systemd/system/

Once the files have been installed, the service must be enabled:

`sudo systemctl enable shutdown-button.service`

The status of the service can be interrogated by:

`sudo systemctl status shutdown-button.service`

gpiozero: http://gpiozero.readthedocs.io/en/stable/recipes.html
