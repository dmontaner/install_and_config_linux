Postgres
================================================================================

    sudo apt-get install postgresql
    sudo apt-get install postgresql-contrib 

See the "Create users" section as you will need this to run.

--------------------------------------------------------------------------------

For the latest version you can add the postgres repo <http://www.postgresql.org/download/linux/ubuntu/>:

Add the repository to the `/etc/apt/sources.list` file
[See](https://phoenixnap.com/kb/how-to-install-postgresql-on-ubuntu):

    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list'

    sudo apt-get update

    sudo apt-get install postgresql
    sudo apt-get install postgresql-contrib 


Update
--------------------------------------------------------------------------------

__apt updates of the database are prevented by default.__

If you really want to reinstall `postgresql` and `postgresql-contrib` then remove this kind of files 

    /etc/apt/apt.conf.d/01autoremove-postgresql
    /etc/apt/apt.conf.d/02autoremove-postgresql
    /etc/apt/apt.conf.d/0*autoremove-postgresql


Then clean up the old versions:

    sudo apt-get remove --purge postgresql-13
    
this will ask if you want to remove the old files (database)

And install the new one:

    sudo apt-get install postgresql-14


IDE-style clients and tools
--------------------------------------------------------------------------------

DBeaver:

    sudo snap install dbeaver-ce


A nice tool: pgAdmin is the most popular and feature rich Open Source administration and development platform for PostgreSQL

    sudo apt-get install pgadmin3


Some useful commands
--------------------------------------------------------------------------------

Find my version

    psql -V
    apt show postgresql

List all the Postgres clusters running on your device
    
    $ pg_lsclusters 
    Ver Cluster Port Status                Owner     Data directory              Log file
    10  main    5432 down,binaries_missing <unknown> /var/lib/postgresql/10/main /var/log/postgresql/postgresql-10-main.log
    14  main    5433 online                postgres  /var/lib/postgresql/14/main /var/log/postgresql/postgresql-14-main.log

Remove old cluster (will delete the data):

    $ sudo pg_dropcluster --stop 10 main

https://www.postgresql.org/docs/current/upgrading.html

See status

    $ pg_isready
    /var/run/postgresql:5433 - accepting connections


Create users
-------------------------

In the newly installed database you need to create your __user__ and a __database__ for it;
if not you may get this kind of errors:

    $ psql 
    psql: error: connection to server on socket "/var/run/postgresql/.s.PGSQL.5433" failed: FATAL:  role "dmontaner" does not exist
    psql: error: connection to server on socket "/var/run/postgresql/.s.PGSQL.5433" failed: FATAL:  database "dmontaner" does not exist

First create your user
(it is easier if the user name is as the one in your machine)
in the bash terminal:

    $ sudo -u postgres createuser --interactive

    Enter name of role to add: dmontaner
    Shall the new role be a superuser? (y/n) y

And then create the database:

    createdb

it will create a database with your username.


Set your password;
see [Change a role's password:](https://www.postgresql.org/docs/current/sql-alterrole.html))

    ALTER ROLE dmontaner WITH PASSWORD 'hu8jmn3';

This may be useful to use `.pgpass` file for authentication.
See https://www.postgresql.org/docs/current/libpq-pgpass.html


Some useful commands in psql
--------------------------------------------------------------------------------

- `\du`: sow users or roles
- `\l+`: show databases
- `\d+`: show tables


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


Start and stop service:

    service --status-all

    service mysql status

    sudo service mysql stop
    sudo service mysql start


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
