


Install Ubuntu Server 20.04
================================================================================

    sudo apt-get install net-tools  # ifconfig is here
    sudo apt-get install emacs

Do not hibernate when lid closes
--------------------------------------------------------------------------------

From: <http://ubuntuhandbook.org/index.php/2020/05/lid-close-behavior-ubuntu-20-04/>

     sudo edit /etc/systemd/logind.conf

And add the line:

    HandleLidSwitch=lock 

Then apply changes:

    systemctl restart systemd-logind.service



Configure network
--------------------------------------------------------------------------------

From: <https://linuxconfig.org/ubuntu-20-04-connect-to-wifi-from-command-line>

    sudo apt-get install wireles-tools
    sudo apt-get install wpasupplicant
    
Find wlan name:
    
    ls /sys/class/net

enp9s0  lo  wlp12s0

wlp12s0 is the name in this case

    sudoedit /etc/netplan/00-installer-config.yaml 

And include:

```
network:
  ethernets:
    enp9s0:
      dhcp4: true
      dhcp6: true
      optional: true
  version: 2
  wifis:
    wlp12s0:
      optional: true
      access-points:
        "WIFI NAME HERE":
          password: "WIFI PASSWORD HERE"
      dhcp4: true
      dhcp6: true
```
