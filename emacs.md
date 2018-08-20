
Install from apt repos first __(this will include some dependencies needed)__:\

    sudo apt-get istall emacs

Some more dependencies:

    sudo apt-get install libx11-dev
    sudo apt-get install xaw3dg xaw3dg-dev
    sudo apt-get install libgif-dev libtiff5-dev
    
    sudo apt-get install build-essential texinfo  libxpm-dev libjpeg-dev libpng-dev libncurses-dev
    sudo apt-get install libxaw7*
 
 (for gtk3 build replace libgtk2.0-dev with libgtk-3-dev)


Download the latest version from https://www.gnu.org/software/emacs/

    wget http://ftp.gnu.org/gnu/emacs/emacs-26.1.tar.gz
    tar -vzxf emacs-26.1.tar.gz
    cd emacs-25.2/
    ./configure
    make
    
    sudo make install

For configuration see https://github.com/dmontaner/.emacs.d

Executables are placed in folder `/src`
