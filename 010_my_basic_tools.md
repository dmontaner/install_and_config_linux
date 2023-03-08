For a new ubuntu 22.04

```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade 

sudo apt-get install git htop tree colordiff net-tools emacs

cd
git clone -b minimal https://github.com/dmontaner/.emacs.d.git

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f
```
