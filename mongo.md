From <https://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/>

Dependencies:

    sudo apt-get install gnupg

Install:

    source /etc/os-release  # this finds out my ubuntu version "name"


    wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu $VERSION_CODENAME/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
    sudo apt-get update
    sudo apt-get install -y mongodb-org

Files and Directories:

- `/etc/mongod.conf` configuration file.
- `/var/lib/mongodb` data directory.
- `/var/log/mongodb` log directory.


Users:

- By default, MongoDB runs using the __mongodb__ user account.


Service:

    sudo systemctl start   mongod
    sudo systemctl status  mongod
    sudo systemctl stop    mongod
    sudo systemctl restart mongod
    
Ensure that MongoDB will start following a system reboot:

    sudo systemctl enable mongod

See logs at:

    sudo tail -f /var/log/mongodb/mongod.log 



MongoChef
================================================================================

Download from <http://3t.io/>

Unzip and add to your path as explained in <http://3t.io/blog/install-mongochef-mongodb-linux/>
