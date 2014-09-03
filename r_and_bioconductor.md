Install R From r-cran repositories
====================================

See more details here: 
<http://cran.es.r-project.org/bin/linux/ubuntu>


Include this line in your `/etc/apt/sources.list` file^[this will add a new repository to your list]:

    deb http://cran.es.r-project.org/bin/linux/ubuntu trusty/

and then run: 

    sudo apt-get update
    sudo apt-get install r-base






Install R From standard repositories
====================================

(this will probably not give you the latest version ... se [below]())

    sudo apt-get install r-base-core

Java
----

If you need to use the [rJava](http://cran.es.r-project.org/web/packages/rJava/index.html) library then do:

    sudo su -
    R CMD javareconf

__Note__: ´sudo su -´will take you to the superuser. Otherwise java is not available as root.  
See also how to __configure java__ at [java.md](java.md)


Extra
------

If you need to install the [RCurl](http://cran.es.r-project.org/web/packages/RCurl/index.html) library then do

    sudo apt-get install curl libcurl4-gnutls-dev

_I am not sure the "culr" is needed_ !!!



http://cran.es.r-project.org/






Emacs
=====

    sudo apt-get install ess
