Pandoc
======

and `pandoc-citeproc` which includes citation processing features.


From repos
----------

    sudo apt-get install pandoc pandoc-citeproc pandoc-data


Install the latest version
--------------------------

    sudo apt-get install cabal-install

and then

    cabal update
    cabal install pandoc pandoc-citeproc

pandoc and pandoc-citeproc should be then installed in your home directory ´.cabal/bin´. 

Add it to your path using your `.profile` file for instance:

    export PATH=/home/dmontaner/.cabal/bin:$PATH


See more details at: <http://johnmacfarlane.net/pandoc/installing.html>


Update
------

Sometimes you may need to remove old libraries 

    rm -rf ~/.ghc
    rm -r .cabal/

Then you can reinstall pandoc


