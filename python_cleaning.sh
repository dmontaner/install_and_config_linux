#!/bin/bash
# python_cleaning.sh
# 2022-08-03 david@insightcapital.io
# cleaning and reinstalling all python versions

sudo rm /usr/local/bin/pip3*

sudo apt-get remove -y python3.7*
sudo apt-get remove -y python3.8*
sudo apt-get remove -y python3.9*
sudo apt-get remove -y python3.10*
sudo apt-get remove -y python3.11*

sudo apt-get purge

sudo apt-get install -y python3.7*
sudo apt-get install -y python3.8*
sudo apt-get install -y python3.9*
sudo apt-get install -y python3.10*
sudo apt-get install -y python3.11*

sudo -H python3.7  -m pip uninstall -y pip
sudo -H python3.8  -m pip uninstall -y pip
sudo -H python3.9  -m pip uninstall -y pip
sudo -H python3.10 -m pip uninstall -y pip
sudo -H python3.11 -m pip uninstall -y pip

sudo -H python3.7  -m ensurepip --default-pip -U
sudo -H python3.8  -m ensurepip --default-pip -U
sudo -H python3.9  -m ensurepip --default-pip -U
sudo -H python3.10 -m ensurepip --default-pip -U
sudo -H python3.11 -m ensurepip --default-pip -U

sudo rm /usr/local/bin/pip3  # this will contain the latest installed one as in the order above

sudo -H pip3.7  install -U pip
sudo -H pip3.8  install -U pip
sudo -H pip3.9  install -U pip
sudo -H pip3.10 install -U pip
sudo -H pip3.11 install -U pip

which python3
which python3.7
which python3.8
which python3.9
which python3.10
which python3.11

which pip3
which pip3.7
which pip3.8
which pip3.9
which pip3.10
which pip3.11

pip3.7  -V
pip3.8  -V
pip3.9  -V
pip3.10 -V
pip3.11 -V

pip3.9 install -UI ipython[all]  # this will be my ipython version for emacs
