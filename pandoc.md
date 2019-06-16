Pandoc
================================================================================

Install `pandoc` and `pandoc-citeproc` which includes citation processing features.

Install Latex dependencies:

    sudo apt-get install texlive


From repos
--------------------------------------------------------------------------------

    sudo apt-get install pandoc pandoc-citeproc pandoc-data


From .deb files
--------------------------------------------------------------------------------

Dowload `.deb` file from
<https://github.com/jgm/pandoc/releases/tag/2.7.2>
and

    sudo dpkg -i pandoc-2.7.2-1-amd64.deb
    sudo apt-get install -f






Install the latest version using Haskell
--------------------------------------------------------------------------------


Dependencies: 

    sudo apt-get install haskell-platform 
    sudo apt-get install cabal-install    # not sure if I still need this one

    
and then

    cabal update
    cabal install cabal-install
    cabal install --max-backjumps=-1 pandoc pandoc-citeproc  # uses to muthc ram

pandoc and pandoc-citeproc should be then installed in your home directory ´.cabal/bin´. 

Add it to your path using your `.profile` file for instance:

    export PATH=/home/dmontaner/.cabal/bin:$PATH


See more details at: <http://johnmacfarlane.net/pandoc/installing.html>


#### Update

Sometimes you may need to remove old libraries 

    rm -rf ~/.ghc
    rm -r .cabal/

Then you can re-install pandoc


See details here <http://pandoc.org/installing.html>


Some markdown editors
================================================================================

Dependencies:

    sudo apt-get install gconf2

Zettlr: download Debian version from <https://www.zettlr.com/download>

    sudo dpkg -i Zettlr-linux-x64-1.2.3.deb
    sudo apt-get install -f
