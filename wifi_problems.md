
Problems with my wifi ... drivers?
==================================

Use the command: 

    lspci -vvnn | grep Network 

or 

    lspci -vvnn | grep Wireless 

to find out the wireless device. 

Mine apparently is: 

Broadcom Corporation __BCM4313__ 802.11bgn Wireless Network Adapter [__14e4:4727__] (rev 01)
