Install Ubuntu 14.04 in MacBook Air
===================================

Using __MacBookAir7,2__

- Download the statndard Ubuntu Desktop distribution form <http://www.ubuntu.com/download/desktop>
- I used: `ubuntu-14.04.3-desktop-amd64.iso`  
(the mac version `ubuntu-14.04.3-desktop-amd64+mac.iso` does not work for me... aparently:  
[NOTE - Do NOT use the +mac version since it does not support EFI boot](http://askubuntu.com/questions/563401/efi-boot-ubuntu-14-04-on-a-mac-without-refind))

- Create a Ubuntu install USB. I used `usb-creator-gtk`
- Install the ISO as usual. __ALT key__ (_option_ key in mac) needs to be pressed when starting the computer to be able to boot form usb.
- I had to create this __partitions__: 
    + EFI boot partition 100MB (primary; Beginning of this space)
    + Swap 8000MB (size of the ram; see: <https://help.ubuntu.com/community/DiskSpace>) (primary; Beginning of this space)
    + EXT4 (rest of the disk) (primary; Beginning of this space). Set the __MOUNT POINT__ to `/`
- and set the __Device for boot__ to the __EFI__ partition (this I am not completely sure is needed).


When I reboot the laptop the screen is black. Few secconds later a folder icon is blinking in the screen. It does not boot.

Fixing the booting process
--------------------------

This I got it from this very nice link <http://askubuntu.com/questions/563401/efi-boot-ubuntu-14-04-on-a-mac-without-refind>

- Insert the installer USB again. The install menu will pop up. Do not choose any potion. __Pres C__. This will open a _GRUB console_ (grub> apears at the begining of the line)
- Follow the steps in <http://askubuntu.com/questions/563401/efi-boot-ubuntu-14-04-on-a-mac-without-refind>
    + in __step 4__:
        * the partition we unmounted has to be mounted again `sudo mount /dev/sda1`
        * the command `sudo grub-install --target x86_64-efi --boot-directory=/boot --efi-directory=/boot/efi`
          gave me the error:  
          `Installing for x86_64-efi platform.
          grub-install: error: /boot/efi doesn't look like an EFI partition.`

- watch out the __Steps to make the changes permanent__






Fixing the wifi
---------------

The wifi seems to work for me. 

I found this nice video that may be usefull in some case <https://www.youtube.com/watch?v=vKrFiJH0UHc>

  The __wifi does not work for me__. 

I discovered this in this nice video <https://www.youtube.com/watch?v=vKrFiJH0UHc>

- Download the DKMS (dynamic kernel module support): <http://archive.ubuntu.com/ubuntu/pool/main/d/dkms/dkms_2.2.0.3-1.1ubuntu5_all.deb>
- Download the WIFI Driver: 
http://es.archive.ubuntu.com/ubuntu/pool/restricted/b/bcmwl/bcmwl-kernel-source_6.30.223.141+bdcom-0ubuntu2_amd64.deb

- Copy the files `dkms_2.2.0.3-1.1ubuntu5_all.deb` and `bcmwl-kernel-source_6.30.223.141+bdcom-0ubuntu2_amd64.deb` using a usb stik and install them (the order matters):  
`dpkg -i dkms_2.2.0.3-1.1ubuntu5_all.deb`  
`dpkg -i bcmwl-kernel-source_6.30.223.141+bdcom-0ubuntu2_amd64.deb`


