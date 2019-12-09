


Uninstall wine
================================================================================

From <https://askubuntu.com/questions/15551/how-to-remove-wine-completely>

    sudo apt-get --purge remove wine-devel-amd64 

    cd ~
    rm -rf .wine
    rm -r .config/menus/applications-merged/wine*
    rm -r .local/share/applications/wine*
    rm .local/share/desktop-directories/wine*

    
After deleting the files run command:

    sudo apt-get remove --purge wine

Do the following to correct any installation error.

    sudo apt-get update
    sudo apt-get autoclean
    sudo apt-get clean
    sudo apt-get autoremove



Install wine from repos
================================================================================

Prior dependencies

    sudo apt-get remove libasound2-plugins:i386

From <https://wiki.winehq.org/Ubuntu>

    sudo dpkg --add-architecture i386  # If your system is 64 bit, enable 32 bit architecture (if you haven't already):
    
    wget -nc https://dl.winehq.org/wine-builds/winehq.key
    sudo apt-key add winehq.key
    
    sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
    sudo apt update
    sudo apt install --install-recommends winehq-stable

or for the development version:

    sudo apt install --install-recommends winehq-devel


Here I get an error because of the `libfaudio0` dependency.
I could solve this in versions prior to (4.21) using ideas from this links:

- <https://forum.winehq.org/viewtopic.php?f=8&t=32192>
- <https://unix.stackexchange.com/questions/536573/error-winehq-devel-depends-wine-devel-4-14bionic>
- <https://askubuntu.com/questions/1164191/wine-staging-fails-to-install-on-18-04>
- <https://askubuntu.com/questions/1145473/how-to-solve-winehq-audio-problems-on-ubuntu-18-04>
- <http://ubuntuhandbook.org/index.php/2019/08/install-wine-4-13-ubuntu-18-04-ubuntu-19-04/>


But I __could not solve dependencies for version 4.21__ 
so I built it from sources.



Install wine from sources
================================================================================

Download latest `xz` from https://dl.winehq.org/wine/source/4.x/

    wget https://dl.winehq.org/wine/source/4.x/wine-4.21.tar.xz
    tar xf wine-4.21.tar.xz
    cd wine-4.21

Install dependencies (see below)

    ./configure
    make
    sudo make install

wine executables are then placed at `/usr/local/bin/`


Dependencies for ./config to work
----------------------------------------

From <https://stackoverflow.com/questions/13780319/cant-build-32bit-wine-on-64bit-linux>

```
sudo apt-get install gcc-multilib libasound2-dev:i386 libgsm1-dev:i386 libjpeg8-dev:i386 liblcms2-dev:i386 libldap2-dev:i386 libmpg123-dev:i386 libopenal-dev:i386 libv4l-dev:i386 libx11-dev:i386 libxinerama-dev:i386 zlib1g-dev:i386
sudo apt-get install libcapi20-dev:i386 libcups2:i386 libdbus-1-3:i386 libfontconfig:i386 libfreetype6:i386 libglu1-mesa:i386 libncurses5:i386 libosmesa6:i386 libsane:i386 libxcomposite1:i386 libxcursor1:i386 libxi6:i386 libxrandr2:i386 libxslt1.1:i386 ocl-icd-libopencl1:i386
```

From <https://ubuntuforums.org/showthread.php?t=1275696>

    sudo apt-get install flex
    sudo apt-get install bison

From <https://stackoverflow.com/questions/27079898/cant-compile-wine-on-64-bit-ubuntu>

    sudo apt-get install libfreetype6-dev:i386 libfreetype6-dev

    sudo apt-get install libfreetype6 libfreetype6-dev
    sudo apt-get install libxft-dev libxft2-dbg libxft2 libxft-dev 



First time configuration:
================================================================================

Run 

    winecfg

and follow the steps. 
I used __Windows 10__ version.

This will create the `~.wine` folder will be created.

__Note:__ 

In the wine __configuration__ you can set screen resolution:

>> Graphics >> Screen Resolution



Install Amazon WorkSpaces
================================================================================

Once __wine__ is installed and __setup__:

Download the windows client from: <https://clients.amazonworkspaces.com/>

Install:

    wine msiexec /i Amazon+WorkSpaces.msi

or 

    wine64 msiexec /i Amazon+WorkSpaces.msi

This opens the setup window. Follow the steps.

Then the window closes and this message is returned:

```
0009:fixme:ntdll:NtLockFile I/O completion on lock not implemented yet
0009:fixme:msi:ITERATE_CreateShortcuts poorly handled shortcut format, advertised shortcut
0009:fixme:msi:ITERATE_CreateShortcuts poorly handled shortcut format, advertised shortcut
0009:fixme:msi:internal_ui_handler internal UI not implemented for message 0x0b000000 (UI level = 5)
0009:fixme:msi:internal_ui_handler internal UI not implemented for message 0x0b000000 (UI level = 5)
```

This is __not really an error message__ so do not worry.

The amazon files should have been created in folder:

    ~/.wine/drive_c/Program\ Files\ \(x86\)/Amazon\ Web\ Services,\ Inc/


__Remove the following file to stop crashes on program start:__  
From <https://appdb.winehq.org/objectManager.php?sClass=version&iId=37045>

    rm ~/.wine/drive_c/Program\ Files\ \(x86\)/Amazon\ Web\ Services\,\ Inc/Amazon\ WorkSpaces/vchan_plugins/pcoip_vchan_remoteprintclient.dll

Then you can __start__ the Amazon Workspace as:

    cd ~  # important to be in your home
    
    wine   start .wine/drive_c/Program\ Files\ \(x86\)/Amazon\ Web\ Services\,\ Inc/Amazon\ WorkSpaces/workspaces.exe
    wine64 start .wine/drive_c/Program\ Files\ \(x86\)/Amazon\ Web\ Services\,\ Inc/Amazon\ WorkSpaces/workspaces.exe


Note: `wine start` or `wine64 start` does not let me:
 - quote the file path with the spaces.
 - have any path prefix before the `.wine/` part. Thus I have to launch it always from my home.

For __updates__ of the Amazon WorkSpaces just follow the setup when it pops up.


Update
----------------------------------------

My latest paths are like

    cd
    rm -f      .wine/drive_c/Program\ Files/Amazon\ Web\ Services\,\ Inc/Amazon\ WorkSpaces/vchan_plugins/pcoip_vchan_remoteprintclient.dll 
    wine start .wine/drive_c/Program\ Files/Amazon\ Web\ Services\,\ Inc/Amazon\ WorkSpaces/workspaces.exe
