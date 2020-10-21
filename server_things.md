# NGINX on Raspberry Pi

[Shut down apache2 first before installing nginx](https://askubuntu.com/a/788367)

See https://www.raspberrypi.org/documentation/remote-access/web-server/nginx.md
    
    sudo service apache2 stop
    
Then:

    sudo apt install nginx
    
Start and stop service:

    sudo /etc/init.d/nginx start
    sudo /etc/init.d/nginx stop
    sudo /etc/init.d/nginx status

# Apache on Raspberry Pi

See https://www.raspberrypi.org/documentation/remote-access/web-server/apache.md

    sudo apt-get install apache2
 
Start and stop service:

    /etc/init.d/apache2 start
    /etc/init.d/apache2 stop
    /etc/init.d/apache2 status


# Ubuntu as a server:

From: <http://www.allaboutlinux.eu/how-to-run-php-on-ubuntu/>

## PHP

    sudo apt-get install php5 libapache2-mod-php5
