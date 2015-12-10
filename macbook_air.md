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

Apparently this is a known bug. See:   
<https://bugs.launchpad.net/ubuntu/+source/grub2/+bug/1282375>

I followed this post to solve it: 
<https://bugs.launchpad.net/ubuntu/+source/grub2/+bug/1282375/comments/4>

- Backup folder /boot/efi
- Reformat the efi partition to FAT32 (used gparted for this form my standard ubuntu installation, not needed live usb or anythung simmilar)  
  This erases any file in /boot/efi
- Copy the back up files into /boot/efi
- `sudo apt-get update` and `sudo apt-get upgrade` did not yield any error again.


Fixing the wifi
---------------

The wifi seems to work for me. 

I found this nice video that may be usefull in some case <https://www.youtube.com/watch?v=vKrFiJH0UHc>



Keyboard
========

FN and F keys
-------------

From: <https://help.ubuntu.com/community/AppleKeyboard#Ubuntu_9.04_to_12.04_LTS_.28Precise_Pangolin.29>

For a _normal_ (ubuntu style) behaviour of the F keys:

- Just for the current session (it will not persist when rebooting)

     sudo echo 2 > /sys/module/hid_apple/parameters/fnmode

- __Persistent__ change: 

```
echo options hid_apple fnmode=2 | sudo tee -a /etc/modprobe.d/hid_apple.conf
sudo update-initramfs -u -k all 
```

See also <https://help.ubuntu.com/community/TroubleWithAppleKbdOnUbuntu>


Swap cmd and Alt keys
---------------------

Form <https://help.ubuntu.com/community/AppleKeyboard#Mapping_keys_.28Insert.2C_Alt.2C_Cmd.2C_etc..29>

Permanently:

```
echo options hid_apple swap_opt_cmd=1 | sudo tee -a /etc/modprobe.d/hid_apple.conf
sudo update-initramfs -u -k all

sudo reboot
```

Swap FN and Ctrl keys
---------------------

Form:

- <https://github.com/free5lot/hid-apple-patched>

See also: 

- <https://help.ubuntu.com/community/AppleKeyboard#Mapping_keys_.28Insert.2C_Alt.2C_Cmd.2C_etc..29>
- <https://wiki.archlinux.org/index.php/Apple_Keyboard#Swap_the_Fn_key_and_Left_Ctrl_key> 


Install _kernel development packages_

     sudo apt-get install linux-libc-dev

```
git clone https://github.com/free5lot/hid-apple-patched
cd  hid-apple-patched/
```

Edit the __Makefile__: 

change the line 

    LINUX_HEADER_DIR ?=/usr/src/linux-headers-$(uname -r)

by 

    LINUX_HEADER_DIR=/usr/src/linux-headers-3.19.0-33-generic

(I do not know why the first one is not working. I discovered the `3.19.0-33-generic` bit typing `echo $(uname -r)` in the shell)


Then:

    make
    
    sudo make install

The make install gives the error:

    Can't read private key
    
which [apparently is not important](http://askubuntu.com/questions/234298/where-is-package-linux-kernel-devel-for-12-04)

Create the file:
    
     /etc/depmod.d/hid-apple.conf

containing the line: 

    override hid_apple * extra

Then run: 

    sudo depmod -a
    
    sudo update-initramfs -u -k all

    sudo reboot
