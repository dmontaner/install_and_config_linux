You can install R form the standard repositories in Ubuntu ...

    sudo apt-get install r-base-core

... but this will probably not give you the latest version. It may be better to


Install R From r-cran repositories
====================================

See more details at <http://cran.es.r-project.org/bin/linux/ubuntu>


Include this line in your `/etc/apt/sources.list` file[^foot1]

[^foot1]: this will add a new repository to your list

    deb http://cran.es.r-project.org/bin/linux/ubuntu trusty/

and then run: 

    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9    # adds the key
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

    sudo apt-get install libcurl4-gnutls-dev

If you need to install the [XML](http://cran.r-project.org/web/packages/XML/index.html) library do first:

    sudo apt-get install libxml2-dev

This will install the `xml2-config` package.


The library [rgl](http://cran.r-project.org/web/packages/rgl/index.html) has some dependencies of the system. 
It is better installed doing: 

    sudo apt-get install r-cran-rgl








Update packages
--------------

Load R as root:

    sudo R

and then:

    update.packages ()




Emacs
-----

    sudo apt-get install ess

----------------------------------------------------------------------------------------------------------


Bioconductor
============


Load R as root:

    sudo R

and then:

    source("http://bioconductor.org/biocLite.R")
    biocLite()

see details at <http://www.bioconductor.org/install>


The Bioconductor version will depend on your R version.  
You can find your Bioconductor version doing: 

    R
    BiocInstaller::biocVersion ()



but this will probably not give you the latest version


Bioconductor development version
--------------------------------

See here: <http://www.bioconductor.org/developers/how-to/useDevel/>



Install Rmpi
============

sudo apt-get install r-cran-rmpi 
sudo apt-get build-dep r-cran-rmpi

