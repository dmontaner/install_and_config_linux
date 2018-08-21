
Do not skip this first step of setting up dependencies
--------------------------------------------------------------------

Install current version from apt repos first __(this will include some needed dependencies)__:

    sudo apt-get istall emacs

NOTE: similar dependencies can be installed by: 

    sudo apt-get build-dep emacs

But you will need to uncomment some dev lines in your `/etc/apt/sources.list` file. 
See [here](https://askubuntu.com/questions/826890/apt-build-dep-fails-unable-to-locate-source-package-despite-deb-src-lines-pres/etc/apt/sources.list)

Some more dependencies:
    
    sudo apt-get install build-essential texinfo libxpm-dev libjpeg-dev libpng-dev libncurses-dev libgif-dev libtiff5-dev
    sudo apt-get install libx11-dev

    sudo apt-get install libxaw7*
    sudo apt-get install gnutls*

(for gtk3 build replace libgtk2.0-dev with libgtk-3-dev)

--------------------------------------------------------------------

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
