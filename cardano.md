# Install Cardano things

See <https://github.com/input-output-hk/cardano-node/blob/master/doc/getting-started/install.md/> for general dependencies.

    sudo apt-get update -y
    sudo apt-get install automake build-essential pkg-config libffi-dev libgmp-dev libssl-dev libtinfo-dev libsystemd-dev zlib1g-dev make g++ tmux git jq wget libncursesw5 libtool autoconf -y

See my [haskell](haskell) install.


## Install Plutus

Install `nix-shell`. See <https://nixos.org/>:

    curl -L https://nixos.org/nix/install | sh
    . /home/dmontaner/.nix-profile/etc/profile.d/nix.sh

The second line is just for paths updates in the current shell.
It is better to __restart the computer__.


Important note from <https://github.com/input-output-hk/plutus>:

> If you want to use Nix with this project, __make sure to set up the IOHK binary cache__.  
> If you do not do this, you will end up building GHC, which takes __several hours__.


Add this 2 lines to ` ~/.config/nix/nix.conf`:

    substituters        = https://hydra.iohk.io https://iohk.cachix.org https://cache.nixos.org/
    trusted-public-keys = hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ= iohk.cachix.org-1:DpRUyj7h7V830dp/i6Nti+NEO2/nhblbov/8MW7Rqoo= cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=

See <https://github.com/input-output-hk/plutus#iohk-binary-cache> for details.


Download plutus

    git clone https://github.com/input-output-hk/plutus.git
    git checkout 3746610e53654a1167aeb4c6294c6096d16b0502  # Just for the YouTube tutorial

Then in __one__ terminal we start the  the plutus playground __server__:

    cd plutus
    nix-shell  # remember the cache if this takes too long

When the `nix-shell` is running:

    cd plutus-playground-client  # yes this is the client here. This is confusing!!
    plutus-playground-server
    

In a __second__ terminal we start the the plutus  __client__ web site:

    cd plutus
    nix-shell

When the `nix-shell` is running:

    cd plutus-playground-client  # client again here
    npm run start

`npm` takes a bit to start and you may need `npm audit fix` before `npm run start`

Now the web site should be running at <https://localhost:8009/>

Note that has to be __secure__ (https) and that the first time the browser will ask you to accept an exception for the site.
