Postgres
===========================================================

From <http://www.postgresql.org/download/linux/ubuntu/>:

Add the repository to the list. Edit the file `/etc/apt/sources.list` and include the line:

    deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main

Add puclic key

    wget https://www.postgresql.org/media/keys/ACCC4CF8.asc 
    sudo apt-key add ACCC4CF8.asc

Then: 

    apt-get install postgresql-9.4

