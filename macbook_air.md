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
- watch out the __Steps to make the changes permanent__
    + in __step 4__:
        * The partition we unmounted has to be mounted again `sudo mount /dev/sda1`
        * The command  
          `sudo grub-install --target x86_64-efi --boot-directory=/boot --efi-directory=/boot/efi`  
          gave me the error:  
          `Installing for x86_64-efi platform.`  
          `grub-install: error: /boot/efi doesn't look like an EFI partition.`  
          Seems to be that after reformating the partition and __not__ rebooting is not jet recognized.
        * so I __forced it__  
          `sudo grub-install --force --target x86_64-efi --boot-directory=/boot --efi-directory=/boot/efi`
        * The command  
          `sudo hfs-bless /boot/efi/System/Library/CoreServices/boot.efi`  
          did not work because it did not find the path. I used this one instead:  
          `sudo hfs-bless /boot/efi/EFI/ubuntu/System/Library/CoreServices/boot.efi`  
          (I discovered this going _verbose_ in the `grub-install` command    
          `sudo grub-install -v --target x86_64-efi --boot-directory=/boot --efi-directory=/boot/efi`


Then reboot was fine.




Problems
--------

When installing programs with the standard `sudo apt-get install` I am getting this error: 

```
grub-install: error: cannot open `/boot/efi/EFI/ubuntu/System/Library/CoreServices/boot.efi': Read-only file system.
dpkg: error processing package shim-signed (--configure):
 subprocess installed post-installation script returned error exit status 1
```

and

```
Errors were encountered while processing:
 grub-efi-amd64
 grub-efi-amd64-signed
 shim-signed
E: Sub-process /usr/bin/dpkg returned an error code (1)
```
But __aparently the software gets installed and runs ok__  ????



Fixing the wifi
---------------

The wifi seems to work for me. 

I found this nice video that may be usefull in some case <https://www.youtube.com/watch?v=vKrFiJH0UHc>
