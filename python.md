[<- Index](000_index.md)

Install Python things
=======================================================================

Some python version is usually installed by default. 

Install ipython and pip: 

    sudo apt-get install ipython python-pip
    sudo -H pip install --upgrade pip  ## to update it. Usually not the latest version on Ubuntu


Install Python3 (ipython and pip):

    sudo apt-get install python3 ipython3 python3-pip
    sudo -H pip3 install --upgrade pip  ## first pip is number 3 seccond with no number    

Pip
=======================================================================


Notes [from here](http://askubuntu.com/questions/612709/trouble-with-pip-on-14-04)

1. `sudo apt-get install python-pip` installs pip in `/usr/bin`
2. `sudo pip install --upgrade pip`  installs pip in `/usr/local/bin`

So after ugrading, the two pip programs are still installed. Sometimes you may need to refress the search path in your shell (open a new one or jusr reboot). The same ocurs for pip3.

Run `pip -V` to be sure the python version that pip is attached to.


Some Libraries I use
====================

    sudo -H pip3 install --upgrade pandas
