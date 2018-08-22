[<- Index](000_index.md)

Install From repositories
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


Build from sources
=======================================================================

Download the .tgz from https://www.python.org/ and then:

    tar -xvzf Python-3.7.0.tgz 
    cd cd Python-3.7.0/
    ./configure
    make -j 6



iPython
=======================================================================

Update iPython

    sudo -H pip  install --upgrade "ipython[all]"
    sudo -H pip3 install --upgrade "ipython[all]"

Jupyter
=======================================================================

    sudo -H pip3 install jupyter

PyCharm
=======================================================================

- Download form: https://www.jetbrains.com/pycharm/
- Extract
- run `bin/pycharm.sh` in the extracted folders

Link:

    ln -s pycharm-community-2016.2.3/bin/pycharm.sh pycharm


Some libraries I use
=======================================================================

    sudo -H pip3 install --upgrade pandas
    sudo -H pip3 install --upgrade nltk
    sudo -H pip3 install --upgrade openpyxl xlrd ## excel
    sudo -H pip3 install --upgrade feather-format
    sudo -H pip3 install --upgrade 

configure NLTK
------------------------------------------

Run `ipython3` and then: 

    import nltk
    nltk.download()

My _Downloading Directory_ for all NLTK collections is `/home/dmontaner/datos/nltk_data` so I need to to set the `NLTK_DATA` environment variable. To do this I add this line to my `.profile` file:

    export NLTK_DATA=/home/dmontaner/datos/nltk_data

See [here](http://stackoverflow.com/questions/3522372/how-to-config-nltk-data-directory-from-code) for details.

pyplot
------------------------------------------

Needs this dependence:

    sudo apt-get install python3-tk
