
Do not skip this first step of setting up dependencies
--------------------------------------------------------------------

Install current version from apt repos first __(this will include some needed dependencies)__:

    sudo apt-get install emacs

NOTE: similar dependencies can be installed by: 

    sudo apt-get build-dep emacs

But you will need to uncomment some dev lines in your `/etc/apt/sources.list` file. 
See [here](https://askubuntu.com/questions/826890/apt-build-dep-fails-unable-to-locate-source-package-despite-deb-src-lines-pres/etc/apt/sources.list)

Some more dependencies:
    
    sudo apt-get install build-essential texinfo libxpm-dev libncurses-dev
    sudo apt-get install libjpeg-dev libpng-dev  libgif-dev libtiff5-dev
    sudo apt-get install libx11-dev
    sudo apt-get install gnutls*

(for gtk3 build replace libgtk2.0-dev with libgtk-3-dev)

--------------------------------------------------------------------

Install from sources. See:
- <https://memopixel.com/building-emacs-28-1-from-source-code>
- <https://stackoverflow.com/a/60788881>

Install dependencies

    sudo apt install make gcc libgtk-3-dev libxaw7-dev
    sudo apt install libxpm-dev libjpeg-dev libgif-dev libtiff-dev libgnutls28-dev
    sudo apt-get install libncurses-dev

Download the latest version from https://www.gnu.org/software/emacs/

    wget http://ftp.gnu.org/gnu/emacs/emacs-26.1.tar.gz
    tar -vzxf emacs-26.1.tar.gz
    cd emacs-26.1/
    ./configure
    make
    
Try the executables which should be placed in folder `/src`
    
Then install to the system:

    sudo make install

For configuration see https://github.com/dmontaner/.emacs.d

--------------------------------------------------------------------

## Key combination Ctrl+[Period] not working Ubuntu 22.04

<https://askubuntu.com/questions/1404448/key-combination-ctrlperiod-not-working-ubuntu-22-04>

Nowadays IBus uses that shortcut by default to access emojis.

If you need the shortcut for other purposes, you can run `ibus-setup` in a terminal window, select the Emoji tab, and change the Emoji annotation shortcut to your liking.
