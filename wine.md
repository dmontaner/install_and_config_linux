


Install wine
================================================================================

From <https://wiki.winehq.org/Ubuntu>

    sudo dpkg --add-architecture i386  # If your system is 64 bit, enable 32 bit architecture (if you haven't already):
    wget -nc https://dl.winehq.org/wine-builds/winehq.key
    sudo apt-key add winehq.key
    sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
    sudo apt update
    sudo apt install --install-recommends winehq-stable

or for the development version:

    sudo apt install --install-recommends winehq-devel



First time configuration:
--------------------------------------------------------------------------------

    winecfg

and follow the steps.  

The `~.wine` folder will be created.

In the wine __configuration__ you can set screen resolution:

>> Graphics >> Screen Resolution



Install Amazon WorkSpaces
================================================================================

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

    ~/.wine/drive_c/Program Files (x86)/Amazon Web Services, Inc/


__Remove the following file to stop crashes on program start:__  
From <https://appdb.winehq.org/objectManager.php?sClass=version&iId=37045>

    rm ~/.wine/drive_c/Program\ Files\ \(x86\)/Amazon\ Web\ Services\,\ Inc/Amazon\ WorkSpaces/vchan_plugins/pcoip_vchan_remoteprintclient.dll

Then you can __start__ the Amazon WorkSpace as:
    
    wine start .wine/drive_c/Program\ Files\ \(x86\)/Amazon\ Web\ Services\,\ Inc/Amazon\ WorkSpaces/workspaces.exe
    wine64 start .wine/drive_c/Program\ Files\ \(x86\)/Amazon\ Web\ Services\,\ Inc/Amazon\ WorkSpaces/workspaces.exe


References
================================================================================

- https://askubuntu.com/questions/671277/is-it-possible-to-run-a-windows-msi-installer/671280
- https://appdb.winehq.org/objectManager.php?sClass=application&iId=17178
