You can install R form the standard repositories in ubuntu ...

    sudo apt-get install r-base-core

... but this will probably not give you the latest version. It may be better to


Install R From r-cran repositories
====================================

See more details at <http://cran.es.r-project.org/bin/linux/ubuntu>


Include this line in your `/etc/apt/sources.list` file[^foot1]

[^foot1]: this will add a new repository to your list

    deb http://cran.es.r-project.org/bin/linux/ubuntu trusty/

and then run: 

    sudo apt-get update
    sudo apt-get install r-base

    sudo apt-get install r-base-dev r-cran-boot r-cran-class r-cran-cluster r-cran-codetools r-cran-foreign r-cran-kernsmooth r-cran-lattice r-cran-mass r-cran-matrix r-cran-mgcv r-cran-nlme r-cran-nnet r-cran-rpart r-cran-spatial r-cran-survival r-cran-rodbc  


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


Update pacages
--------------

Load R as root:

    sudo R

and then:

    update.packages ()




Emacs
=====

    sudo apt-get install ess
