## This script contains my MOTD config for Debian/Ubuntu.

sudo chmod -x /etc/update-motd.d/*
sudo vim /etc/update-motd.d/01-custom
## Paste contents:
#!/bin/sh
# Show weather information. Change the city name to location
ansiweather -l helsinki
echo
export TERM=xterm; inxi -D
echo
/usr/bin/neofetch
echo

sudo chmod +x /etc/update-motd.d/01-custom

## Blank this file:
sudo vim /etc/motd

exit
