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


Changes in `/etc/mongod.conf` need the service to be restarted


Users:

- By default, MongoDB runs using the __mongodb__ user account.


Service:

    service mongod status
    sudo service mongod stop
    sudo service mongod start
    sudo service mongod restart

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


Mongo on an external drive
================================================================================

    sudo mongod --fork --logpath /media/dmontaner/kingstonssd/DATOS_MONGO/LOGS/mongod.log --dbpath /media/dmontaner/kingstonssd/DATOS_MONGO/STORAGE

    sudo mongod --fork --logpath /var/log/mongodb/mongod.log --dbpath /media/dmontaner/kingstonssd/DATOS_MONGO/STORAGE
    
    sudo service mongod start --fork --logpath /var/log/mongodb/mongod.log --dbpath /media/dmontaner/kingstonssd/DATOS_MONGO/STORAGE


https://askubuntu.com/questions/257714/how-to-change-the-location-that-mongodb-uses-to-store-its-data

https://www.mongodb.com/community/forums/t/mongod-service-main-process-exited-code-exited-status-1-failure/113739

https://dba.stackexchange.com/questions/188713/ubuntu-tried-to-move-my-mongodb-database-to-an-external-drive-and-now-it-throw

https://stackoverflow.com/a/44643816/4512454



    sudo chown -R mongodb:mongodb /media/dmontaner/kingstonssd/DATOS_MONGO
    sudo chmod -R 755 /media/dmontaner/kingstonssd/DATOS_MONGO
    sudo chmod 766 /media/dmontaner/kingstonssd/DATOS_MONGO/LOGS

drwxr-xr-x  4 mongodb       mongodb       4.0K Jan 13 12:12 mongodb
drwxr-xr-x  4 mongodb   mongodb   4.0K Jan 13 12:03 DATOS_MONGO

Jan 13 12:32:53 xps mongod[13391]: {"t":{"$date":"2022-01-13T12:32:53.925Z"},"s":"F",  "c":"CONTROL",  "id":20574,   "ctx":"main","msg":"Error during global initialization","attr":{"error":{"code":38,"codeName":"FileNotOpen","errmsg":"Failed probe for \"/media/dmontaner/kings
