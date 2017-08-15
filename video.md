# To be able to use DVD in ubuntu 16:

See here: 
https://askubuntu.com/questions/845205/how-to-play-dvds-in-ubuntu-16-04

    sudo apt-get install libdvd-pkg
    sudo dpkg-reconfigure libdvd-pkg

Rebooting may be necessary. 

# DVD player
Other than the default in ubuntu

    sudo apt-get install vlc

Video Formats
=========================================================================================

For `swf` files:

    sudo apt-get install gnash


Video Editor
=========================================================================================

OpenShot install as idicated in their website <http://www.openshot.org/ppa/>

```
sudo add-apt-repository ppa:openshot.developers/ppa
sudo apt-get update
sudo apt-get install openshot-qt
```
