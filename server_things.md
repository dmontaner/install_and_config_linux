# Ubuntu as a server:

From: 

<http://www.allaboutlinux.eu/how-to-run-php-on-ubuntu/>


## NGINX

https://www.raspberrypi.org/documentation/remote-access/web-server/nginx.md
    
[Shut down apache2 first before installing nginx](https://askubuntu.com/a/788367)

    sudo service apache2 stop
    
Then:

    sudo apt install nginx
    
    
    

## Apache

    sudo apt-get install apache2

## PHP

    sudo apt-get install php5 libapache2-mod-php5
