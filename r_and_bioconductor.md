Install R From Repositories
===========================

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

_I am not sure the __culr__ is needed_ !!!







Emacs
=====

    sudo apt-get install ess
