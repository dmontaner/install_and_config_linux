


TP-LINK Archer T2U Nano V1
--------------------------------------------------------------------------------

Official drivers are not available for Linux

https://www.tp-link.com/us/home-networking/usb-adapter/archer-t2u-nano/#specifications

https://www.tp-link.com/us/support/download/archer-t2u-nano/#Driver




From
https://askubuntu.com/questions/1149117/tp-link-ac600-archer-t2u-nano-driver-for-ubuntu-18-04

    sudo apt install git dkms
    git clone https://github.com/aircrack-ng/rtl8812au.git
    cd rtl8812au
    sudo ./dkms-install.sh
