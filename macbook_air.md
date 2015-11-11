Install Ubuntu 14.04 in MacBook Air
===================================

Using __MacBookAir7,2__

- Download the statndard Ubuntu Desktop distribution form <http://www.ubuntu.com/download/desktop>
- I used: `ubuntu-14.04.3-desktop-amd64.iso`  
(the mac version `ubuntu-14.04.3-desktop-amd64+mac.iso` does not work for me)

- Create a Ubuntu install USB. I used `usb-creator-gtk`
- Install the ISO as usual. __ALT key__ needs to be pressed when starting the computer to be able to boot form usb.
- I had to create this __partitions__: 
    + EFI boot partition 100MB (primary; Beginning of this space)
    + Swap 8000MB (size of the ram; see: <https://help.ubuntu.com/community/DiskSpace>) (primary; Beginning of this space)
    + EXT4 (rest of the disk) (primary; Beginning of this space). Set the __MOUNT POINT__ to `/`
- and set the __Device for boot__ to the __EFI__ partition.


When I reboot the laptop the screen is black. Few secconds later a folder icon is blinking in the screen. It does not find the 
http://askubuntu.com/questions/563401/efi-boot-ubuntu-14-04-on-a-mac-without-refind



  The __wifi does not work for me__. 


Fixing the wifi
---------------

I discovered this in this nice video <https://www.youtube.com/watch?v=vKrFiJH0UHc>

- Download the DKMS (dynamic kernel module support): <http://archive.ubuntu.com/ubuntu/pool/main/d/dkms/dkms_2.2.0.3-1.1ubuntu5_all.deb>
- Download the WIFI Driver: 
http://es.archive.ubuntu.com/ubuntu/pool/restricted/b/bcmwl/bcmwl-kernel-source_6.30.223.141+bdcom-0ubuntu2_amd64.deb

- Copy the files `dkms_2.2.0.3-1.1ubuntu5_all.deb` and `bcmwl-kernel-source_6.30.223.141+bdcom-0ubuntu2_amd64.deb` using a usb stik and install them (the order matters):  
`dpkg -i dkms_2.2.0.3-1.1ubuntu5_all.deb`  
`dpkg -i bcmwl-kernel-source_6.30.223.141+bdcom-0ubuntu2_amd64.deb`


