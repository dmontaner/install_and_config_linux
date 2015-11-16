Deactivate Bluetooth on system startup
======================================
From <http://askubuntu.com/questions/67758/how-can-i-deactivate-bluetooth-on-system-startup>

Edit the file `/etc/rc.local` and add this before line with `exit 0`:

    rfkill block bluetooth



How to change Bluetooth broadcast device name
=============================================

From <http://askubuntu.com/questions/80960/how-to-change-bluetooth-broadcast-device-name>

Create a file called:

    /etc/machine-info

with the following content:

    PRETTY_HOSTNAME=device-name

After this, restart the Bluetooth service:

    sudo service bluetooth restart

