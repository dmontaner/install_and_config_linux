
Problems with my wifi ... drivers?
==================================

Use the command: 

    lspci -vvnn | grep Network 

or 

    lspci -vvnn | grep Wireless 

to find out the wireless device. 

Mine apparently is: 

Broadcom Corporation __BCM4313__ 802.11bgn Wireless Network Adapter [__14e4:4727__] (rev 01)


Solved
======

Solved following more or less the instructions in: <https://help.ubuntu.com/community/WifiDocs/Driver/bcm43xx#Known_Issues> 
First:

    sudo apt-get purge bcmwl-kernel-source
    sudo apt-get install linux-firmware-nonfree


Then:

    sudo modprobe -r b43 brcmsmac

here I do not do the __wl__ indicated in the link above. 

    sudo modprobe brcmsmac
    echo "brcmsmac" | sudo tee -a /etc/modules
    
I do __not do__ the changes indicated in the blacklist file `/etc/modprobe.d/blacklist.conf`


Updates
=======

When some updates are installed in the computer (usually some parts of the base linux) the modprobe gets messed up. Then, after upgrades I run: 

    sudo modprobe -r b43 brcmsmac
    sudo modprobe brcmsmac

----
The command above did not work anymore... apparently this one does:

    sudo apt-get install bcmwl-kernel-source
