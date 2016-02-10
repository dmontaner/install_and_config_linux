
To install the latest version add the repositories to the file

    /etc/apt/sources.list

Find the latest version of the repos here: <https://launchpad.net/~libreoffice>

Go to the latest link: <https://launchpad.net/~libreoffice/+archive/ubuntu/libreoffice-5-0>

In my case I had to add these two lines to my `/etc/apt/sources.list` file:

    ## LibreOffice
    deb http://ppa.launchpad.net/libreoffice/libreoffice-5-0/ubuntu trusty main
    deb-src http://ppa.launchpad.net/libreoffice/libreoffice-5-0/ubuntu trusty main

You also 

and follow: 

   Adding this PPA to your system > Technical details about this PPA

This will show you the lines to add to your `sources.list` file

Then: 

    sudo apt-get update
    sudo apt-get dist-upgrade
    
__dist-upgrade__ is needed; just upgrade does not work for the LibreOffice packages
