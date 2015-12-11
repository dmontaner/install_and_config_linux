

To install the latest version add the repositories to the 

    /etc/apt/sources.list

Find the latest version here: <https://launchpad.net/~libreoffice>

Go to the latest link: <https://launchpad.net/~libreoffice/+archive/ubuntu/libreoffice-5-0>

and follow: 

   Adding this PPA to your system > Technical details about this PPA

This will show you the lines to add to your `sources.list` file

Then: 

    sudo apt-get update
    sudo apt-get dist-upgrade
    
__dist-upgrade__ is needed; just upgrade does not work for the LibreOffice packages
