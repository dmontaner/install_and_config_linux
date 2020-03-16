


Docker Install
--------------------------------------------------------------------------------

Form <https://docs.docker.com/install/linux/docker-ce/ubuntu>

```
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
    
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88  # just for testing

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose



```

Ok up to here.
Some errors out of the add repo:

    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"


Then this seems to work:

    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io


Test setup

    sudo docker run hello-world


### Skip sudo

From <https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04>

If you want to avoid typing sudo whenever you run the docker command, 
add your username to the docker group:

    sudo usermod -aG docker "${USER}"
                         
To apply the new group membership, log out of the server and back in, 
or type the following:

    su - "${USER}"

You will be prompted to enter your user’s password to continue.

Confirm that your user is now added to the docker group by typing:

    id -nG




Key issue
--------------------------------------------------------------------------------


From <https://github.com/docker/for-linux/issues/812>

    cd /var/lib/apt/lists
    ll | grep docker

    sudo rm download.docker.com_linux_ubuntu_dists_bionic_InRelease
    sudo rm download.docker.com_linux_ubuntu_dists_bionic_stable_binary-amd64_Packages
    


See <https://medium.com/@sh.tsang/installation-of-docker-3b18d9e70bea>


```
Err:25 https://download.docker.com/linux/ubuntu bionic InRelease                                                                                          
  403  Forbidden [IP: 143.204.192.26 443]
Get:27 https://typora.io/linux ./ InRelease [758 B]                                                                                  
Hit:29 https://packages.red-data-tools.org/ubuntu bionic InRelease                                                        
Reading package lists... Done                       
E: Failed to fetch https://download.docker.com/linux/ubuntu/dists/bionic/InRelease  403  Forbidden [IP: 143.204.192.26 443]
E: The repository 'https://download.docker.com/linux/ubuntu bionic InRelease' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
```
