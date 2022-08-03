
Set keyboard layout
===================================================================================

Edit

    sudo emacs /etc/default/keyboard

and set 

    XKBLAYOUT="us"


Enable SSH server
===================================================================================

From
<https://www.raspberrypi.org/documentation/remote-access/ssh/>

    sudo systemctl enable ssh
    sudo systemctl start ssh

Test as:

    service --status-all

Find current ip:

    ifconfig | grep inet

Find MAC address

    ifconfig | grep ether 



SETTING WIFI UP VIA THE COMMAND LINE
===================================================================================

From 
<https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md>

Find all names for available wifi networks

    sudo iwlist wlan0 scan | grep ESSID

Set networks and password

    sudo su
    wpa_passphrase "my-wifi-name" "mypassword" >> /etc/wpa_supplicant/wpa_supplicant.conf

Edit `wpa_supplicant.conf` and remove the commented line with the non encripted password

Exit sudo 

Reconfigure the interface

    wpa_cli -i wlan0 reconfigure
    
Check

    ifconfig wlan0
    
If the `inet addr` field apears and has an address then wifi is OK


Create SD card with rasspbian
===================================================================================

Standard:

- Download
- format SD card as `ext4`
- create image using `usb-creator-gtk`

default user : pi
default password: raspberry

See
<https://www.raspberrypi.org/forums/viewtopic.php?t=133691>



Chrome OS
===================================================================================

Download image from the Assets section in:
<https://github.com/FydeOS/chromium_os-raspberry_pi/releases>

Use etcher to burn the SD card <https://www.balena.io/etcher/>  
Debian and Ubuntu based Package Repository (GNU/Linux x86/x64) here:  
https://github.com/balena-io/etcher?d_id=fd32b931-be9a-40f8-8eda-45e659caf111R#debian-and-ubuntu-based-package-repository-gnulinux-x86x64

```
curl -1sLf \
   'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' \
   | sudo -E bash
Update and install:

sudo apt-get update
sudo apt-get install balena-etcher-electron
```

Find the balenaEtcher GUI.
