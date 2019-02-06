Deactivate Bluetooth on system startup
======================================
From <https://askubuntu.com/questions/67758/how-can-i-deactivate-bluetooth-on-system-startup>

Edit (or create) the file `/etc/rc.local` with this lines:

    #!/bin/sh
    rfkill block bluetooth
    exit 0


How to change Bluetooth broadcast device name
=============================================

From <http://askubuntu.com/questions/80960/how-to-change-bluetooth-broadcast-device-name>

Create a file called:

    /etc/machine-info

with the following content:

    PRETTY_HOSTNAME=device-name

After this, restart the Bluetooth service:

    sudo service bluetooth restart

