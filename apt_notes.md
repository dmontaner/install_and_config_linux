

https://wiki.debian.org/SecureApt

https://askubuntu.com/questions/65911/how-can-i-fix-a-404-error-when-using-a-ppa-or-updating-my-package-lists

Dependencies
--------------------------------------------------------------------------------

    sudo apt-get install wget ca-certificates


Add repository
--------------------------------------------------------------------------------

See installed keys:

    apt-key list

    apt-key fingerprint 0EBFCD88


Add keys

    apt-key add file
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    wget -qO - https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -



Files
--------------------------------------------------------------------------------

List of sources:

    /etc/apt/sources.list.d
    /etc/apt/sources.list

List of keys:

    /etc/apt/trusted.gpg
    /etc/apt/trusted.gpg.d

Release files:

    /var/lib/apt/lists
    
    
Show all ppa repos:

    grep ^ /etc/apt/sources.list /etc/apt/sources.list.d/*

