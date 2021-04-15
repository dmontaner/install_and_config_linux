Postgres
================================================================================

    sudo apt-get install postgresql
    sudo apt-get install postgresql-contrib 

For the latest version you can add the postgres repo <http://www.postgresql.org/download/linux/ubuntu/>:

Add the repository to the list. Edit the file `/etc/apt/sources.list` and include the line:

    deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main

Add puclic key

    wget https://www.postgresql.org/media/keys/ACCC4CF8.asc 
    sudo apt-key add ACCC4CF8.asc

A nice tool: pgadmin3 

    sudo apt-get install pgadmin3


R libraries for postgres
-------------------------

Some dependencies

    sudo apt-get install libpq-dev
    
from the R session (as root): 

    install.packages ('RPostgreSQL')

MySQL
================================================================================

Client:

    sudo apt-get install mysql-client

Server: 

    sudo apt-get install mysql-server


R libraries for MySQL
-------------------------

Some dependencies

    sudo apt-get install libmariadbclient-dev 

from the R session (as root): 

    install.packages ('RMySQL')


SQLite
================================================================================

    sudo apt-get install sqlite3 libsqlite3-dev



Flyway
================================================================================

See: <https://flywaydb.org/documentation/commandline/#download-and-installation>

```
cd /opt
wget -qO- https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/5.2.4/flyway-commandline-5.2.4-linux-x64.tar.gz | sudo tar xvz
sudo chmod 755 flyway-5.2.4/flyway

cd /usr/local/bin
sudo ln -s /opt/flyway-5.2.4/flyway .```
```

Version 6

```
cd /opt
wget -qO- https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/6.3.3/flyway-commandline-6.3.3-linux-x64.tar.gz | sudo tar xvz 
sudo chmod 755 flyway-6.3.3/flyway

cd /usr/local/bin
sudo ln -s /opt/flyway-6.3.3/flyway .
```

New version:

``` 
cd /opt
wget -qO- https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/7.8.0/flyway-commandline-7.8.0-linux-x64.tar.gz | sudo tar xvz
sudo chmod 755 flyway-7.8.0/flyway

cd /usr/local/bin
sudo ln -s /opt/flyway-7.8.0/flyway .   
```
