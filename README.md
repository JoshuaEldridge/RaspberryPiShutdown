# RaspberryPiShutdown

I've seen many iterations of shutdown scripts that have been written to
allow a single button push to shutdown the device properly (via sudo halt
or sudo shutdown -now). This repository is an attempt to document and retain
the way that works best for my needs. And of course points will be awarded for
style.

The shutdown-button.py script should be installed in /usr/local/bin/ and the 
service file should be placed in /etc/systemd/system/

Once the files have been installed, the service must be enabled at boot:

sudo systemctl enable shutdown-button.service

The status of the service can be interrogated by:

sudo systemctl status shutdown-button.service


