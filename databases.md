Postgres
===========================================================

    sudo apt-get install postgresql

For the latest version you can add the postgres repo <http://www.postgresql.org/download/linux/ubuntu/>:

Add the repository to the list. Edit the file `/etc/apt/sources.list` and include the line:

    deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main

Add puclic key

    wget https://www.postgresql.org/media/keys/ACCC4CF8.asc 
    sudo apt-key add ACCC4CF8.asc

A nice tool: pgadmin3 

    sudo apt-get install pgadmin3



R libraries
-----------

Some dependencies

    ￼sudo apt-get install libpq-dev

from the R session (as root): 

    install.packages ('RPostgreSQL')

