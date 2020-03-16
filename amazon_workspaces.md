Install Linux Client for Amazon Workspaces
================================================================================

From <https://clients.amazonworkspaces.com/linux-install.html>


    wget -q -O - https://workspaces-client-linux-public-key.s3-us-west-2.amazonaws.com/ADB332E7.asc | sudo apt-key add -
    echo "deb [arch=amd64] https://d3nt0h4h6pmmc4.cloudfront.net/ubuntu bionic main" | sudo tee /etc/apt/sources.list.d/amazon-workspaces-clients.list 
    sudo apt-get update
    
    sudo apt-get install workspacesclient


Configuration
--------------------------------------------------------------------------------

__Note__ from <https://docs.aws.amazon.com/workspaces/latest/userguide/amazon-workspaces-linux-client.html>

By default, Linux client access is __disabled__. To use this client with your WorkSpace, your Amazon WorkSpaces administrator must enable Linux client access for your WorkSpaces directory.




Some quick install and set up notes.
================================================================================

sudo yum install emacs
sudo yum install tree
sudo yum install telnet

git config --global user.email "david.montaner@gmail.com"
git config --global user.name "dmontaner"
git config --global core.editor emacs

ssh-keygen -t rsa -b 4096 -C "david@insigthcapital.io"  # I dont use it really

sudo yum install python3
sudo 

sudo -H pip3 install 

