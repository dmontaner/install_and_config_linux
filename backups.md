backintime
===========

    sudo apt-get install backintime-common backintime-gnome

If you want your backup to be __encrypted__ you will need: 

    sudo apt-get install encfs
    sudo adduser root fuse    ## root needs to be member of group 'fuse'. To apply changes logout and login again.


Set Up
-------

Format an external hard drive using `gparted` (need to be root)

    sudo gparted

- Choose label
- Choose format.
  If you choose __ext4__ the disk will be mounted later as _owned_ by __root__. You can change this doing: 
```
cd /media/dmontaner/
sudo chown -R dmontaner:domontaner NAME OF THE DISK
```
see here <http://askubuntu.com/questions/74806/how-can-i-change-permissions-on-external-drives>

After changing the owner sometimes I need to label again the disk (done as usual).


Configuration
--------------

- Run the application as __root__. 
- Set the folder _Where to save snapshots_ to the hard drive.
- In _Mode_ you can choose __Local encrypted__ (password would be required then) (__encfs__ needs to be installed)
- _Include_ home directory.
- Exclude... 
