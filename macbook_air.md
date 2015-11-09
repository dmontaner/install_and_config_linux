Install Ubuntu 14.04 in MacBook Air
===================================

- Download the statndard Ubuntu Desktop distribution form <http://www.ubuntu.com/download/desktop>
- I used: `ubuntu-14.04.3-desktop-amd64.iso`  
(the mac version `ubuntu-14.04.3-desktop-amd64+mac.iso` does not work for me)

- Create   I used `usb-creator-gtk`

- Download the DKMS (dynamic kernel module support): <http://archive.ubuntu.com/ubuntu/pool/main/d/dkms/dkms_2.2.0.3-1.1ubuntu5_all.deb>
- Download the WIFI Driver: 
http://es.archive.ubuntu.com/ubuntu/pool/restricted/b/bcmwl/bcmwl-kernel-source_6.30.223.141+bdcom-0ubuntu2_amd64.deb
(this I discovered in this nice video <https://www.youtube.com/watch?v=vKrFiJH0UHc>)

- Install the ISO as usual. __ALT key__ needs to be pressed when starting the computer to be able to boot form usb.  
  The whifi will does not work for me.

- Copy the files `dkms_2.2.0.3-1.1ubuntu5_all.deb` and `bcmwl-kernel-source_6.30.223.141+bdcom-0ubuntu2_amd64.deb` using a usb stik and install them (the order matters): 
    dpkg -i dkms_2.2.0.3-1.1ubuntu5_all.deb
    dpkg -i bcmwl-kernel-source_6.30.223.141+bdcom-0ubuntu2_amd64.deb`
