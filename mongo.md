


From <https://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/>

Dependencies:

    sudo apt-get install gnupg

Install:

    wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
    sudo apt-get update
    sudo apt-get install -y mongodb-org

Files and Directories:

- `/etc/mongod.conf` configuration file.
- `/var/lib/mongodb` data directory.
- `/var/log/mongodb` log directory.


Users:

- By default, MongoDB runs using the __mongodb__ user account.


Service:

    sudo service mongod start
    sudo service mongod status
    sudo service mongod stop

See logs at:

    sudo tail -f /var/log/mongodb/mongod.log 



MongoChef
================================================================================

Download from <http://3t.io/>

Unzip and add to your path as explained in <http://3t.io/blog/install-mongochef-mongodb-linux/>
