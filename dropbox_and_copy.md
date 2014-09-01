Install Dropbox
================

    sudo apt-get install nautilus-dropbox

Run 

    dropbox start -i

and configure your user. 

Make sure you tick the option _Start Dropbox on system startup_.
This will include Dropbox in the __Startup Applications Preferences__ of the ubuntu system. 


<!-- 
Dependencies:
-------------

    sudo apt-get install 

Install
--------

See <https://www.dropbox.com/install?os=lnx>

Basically do:

    cd ~ 
    wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

this will create the `.dropbox-dist folder`


Start the application: 
----------------------

    .dropbox-dist/dropboxd &
-->



Install Copy
=============

Dependencies:

    sudo apt-get install libcanberra-gtk-module libcanberra-gtk-module-dbg

Download the app from <https://www.copy.com/install>

And run 

    CopyAgent & 

The __&__ is important

Check the _Start Copy when I log into this computer_ option in the preferences
and make sure the full path to the CopyAgent is in the command box of the __Startup Applications Preferences__.


