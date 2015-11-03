
How to change Bluetooth broadcast device name
=============================================

From <http://askubuntu.com/questions/80960/how-to-change-bluetooth-broadcast-device-name>

Create a file called:

    /etc/machine-info

with the following content:

    PRETTY_HOSTNAME=device-name

After this, restart the Bluetooth service:

    sudo service bluetooth restart

