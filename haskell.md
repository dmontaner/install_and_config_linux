# Install Haskell


## Install up to date version

To install a more up to date version see <https://www.haskell.org/ghcup/>

> ghcup is the main installer for
> the general purpose language Haskell

Install dependencies:

    sudo apt-get install automake build-essential pkg-config libffi-dev libgmp-dev libssl-dev libtinfo-dev libsystemd-dev zlib1g-dev make g++ tmux git jq wget libncursesw5 libtool autoconf -y
    build-essential curl libffi-dev libffi6 libgmp-dev libgmp10 libncurses-dev libncurses5 libtinfo5

And install `ghcup`

    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

this ill do:

```
This script will download and install the following binaries:
  * ghcup - The Haskell toolchain installer
            (for managing GHC/cabal versions)
  * ghc   - The Glasgow Haskell Compiler
  * cabal - The Cabal build tool

ghcup installs only into the following directory,
which can be removed anytime:
  /home/dmontaner/.ghcup

Press ENTER to proceed or ctrl-c to abort.
Note that this script can be re-run at any given time.
```


## Ubuntu version

    sudo apt-get install haskell-platform
    sudo apt-get install cabal-install

But those are __old__

    sudo apt-get --purge remove ghc ghcup
    sudo apt-get --purge remove haskell-platform
    sudo apt-get --purge remove cabal-install


## Buld GHC from source

See <https://www.haskell.org/ghc/download_ghc_8_10_4.html#linux_x86_64>

    wget https://downloads.haskell.org/~ghc/8.10.4/ghc-8.10.4-x86_64-deb10-linux.tar.xz
    tar -xvf ghc-8.10.4-x86_64-deb10-linux.tar.xz
    cd ghc-8.10.4
    ./configure 
    make install
