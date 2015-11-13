Install VirtualBox
==================

`sudo apt-get install virtualbox` gaves some problems and does not install the lates version.

 * No suitable module for running kernel found

Instead install it form the virtualbox sources. See here <https://www.virtualbox.org/wiki/Linux_Downloads>

- add this line to the `/etc/apt/sources.list` file:  
  `deb http://download.virtualbox.org/virtualbox/debian trusty contrib`
- Ass the Oracle __public key__ to your list:  
  `wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -`
- Update: 
  `sudo apt-get update`
- And install the latest version
  `sudo apt-get install virtualbox-5.0`

