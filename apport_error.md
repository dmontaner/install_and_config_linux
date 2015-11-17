
When booting the computer I get this error mesage: 

    com.ubuntu.apport.apport-gtk-root

Described here <http://www.binarytides.com/ubuntu-fix-system-program-problem-error/>


Turn off apport
===============

    sudo rm /var/crash/*

Edit: 

    sudo emacs /etc/default/apport

and set

    enabled=0
