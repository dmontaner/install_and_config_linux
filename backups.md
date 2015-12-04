backintime
===========

sudo apt-get install backintime-common backintime-gnome

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
