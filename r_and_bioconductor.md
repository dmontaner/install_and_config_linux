Standard repositories in Ubuntu usually have old versions of R.

Install R From r-cran repositories
====================================

See more details at  
http://cran.r-project.org/bin/linux/ubuntu  
https://www.digitalocean.com/community/tutorials/how-to-install-r-on-ubuntu-18-04


    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

    sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'



Edit file `/etc/apt/sources.list` and add this line:

    deb https://cran.r-project.org/bin/linux/ubuntu xenial/

Then in you shell:

    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9    # adds the key
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install r-base r-base-deb

Bioconductor + packages

    sudo R

    source("http://bioconductor.org/biocLite.R")
    biocLite()
    install.packages(c ("dplyr", "ggplot2", "openxlsx", "feather",
                        "RSQLite", "jsonlite",
                        "curl", "RCurl", 
                        "knitr", "markdown", "shiny"))



Java
----

If you need to use the [rJava](http://cran.es.r-project.org/web/packages/rJava/index.html) library then do:

    sudo su -
    R CMD javareconf

__Note__: ´sudo su -´ will take you to the superuser. Otherwise java is not available as root.  
See [here](http://askubuntu.com/questions/376199/sudo-su-vs-sudo-i-vs-sudo-bin-bash-when-does-it-matter-which-is-used) for more details about ´sudo su -´  
See also how to __configure java__ at [java.md](java.md)


Extra 
------

### RCurl

If you need to install the [RCurl](http://cran.es.r-project.org/web/packages/RCurl/index.html) library then do

    sudo apt-get install libcurl4-openssl-dev
__Do not use__ `sudo apt-get install libcurl4-gnutls-dev` because apparently it gives some problems... see [here](https://github.com/jeroenooms/curl/issues/63)

Sometimes you may need to install `libcurl4-openssl-dev` from [sources](http://packages.ubuntu.com/trusty/amd64/libcurl4-openssl-dev/download)

__Reinstall__ `RCurl` after reinstalling `libcurl4-openssl-dev`

-----


If you need to install the [XML](http://cran.r-project.org/web/packages/XML/index.html) library do first:

    sudo apt-get install libxml2-dev

This will install the `xml2-config` package.


The library [rgl](http://cran.r-project.org/web/packages/rgl/index.html) has some dependencies of the system. 
It is better installed doing: 

    sudo apt-get install r-cran-rgl


----------

If you need [devtools](https://cran.r-project.org/web/packages/devtools/index.html) it depends of [openssl](https://cran.r-project.org/web/packages/openssl/index.html). You will need this dependency:  

    sudo apt-get install libgdal1-dev
    
And some dependency to build packages:

    sudo apt-get install qpdf


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

Sometimes `BiocInstaller` is a bit old and `biocLite` does not upgrade Bioconductor properly. In such cases I uninstall `BiocInstaller` manually:   

    R CMD REMOVE BiocInstaller
 
 And then call again:
 
    source("http://bioconductor.org/biocLite.R")  # this call is what installs BiocInstaller
    biocLite()


Bioconductor development version
--------------------------------

See here: <http://www.bioconductor.org/developers/how-to/useDevel/>



Install Rmpi
============

sudo apt-get install r-cran-rmpi 
sudo apt-get build-dep r-cran-rmpi


Grapthincs
===============


Local library
===============

Whithin the R session `.libpaths()` will tell you the `searchpaths`

You can add some more paths from within R using `.libpaths('/my/new/path')` or configure it adding this line to the `~.Renvirion` file: 

    R_LIBS=/my/new/path
