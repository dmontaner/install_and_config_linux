# Install Cardano

See <https://github.com/input-output-hk/cardano-node/blob/master/doc/getting-started/install.md/>

    sudo apt-get update -y
    sudo apt-get install automake build-essential pkg-config libffi-dev libgmp-dev libssl-dev libtinfo-dev libsystemd-dev zlib1g-dev make g++ tmux git jq wget libncursesw5 libtool autoconf -y


# Plutus

Install `nix-shell`. See <https://nixos.org/>:

    curl -L https://nixos.org/nix/install | sh
    . /home/dmontaner/.nix-profile/etc/profile.d/nix.sh

The seccond line is just for paths updates. It may be better restart the computer.

Download plutus

    git clone https://github.com/input-output-hk/plutus.git
    git checkout 3746610e53654a1167aeb4c6294c6096d16b0502


Start nix-shell

Start web client
    cd plutus-playground-client
    npm start 
