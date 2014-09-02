Install R From Repositories
=========================

    sudo apt-get install r-base-core

If you need to use the [rJava](http://cran.es.r-project.org/web/packages/rJava/index.html) library then do:

    sudo su -
    R CMD javareconf

_Note_: ´sudo su -´will take you to the superuser. Otherwise java is not available as root.
See also how to configure java at [java.md]





Emacs
=====

    sudo apt-get install ess
