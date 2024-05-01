


Install latest stable version
--------------------------------------------------------------------------------

Find latest version at:
- <https://deb.nodesource.com/>

```
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo bash -
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y nodejs
```

See version:
    node -v



See also:
- <https://github.com/nodesource/distributions/blob/master/README.md>
- <https://nodejs.org/en/download/>


Install nodejs and npm from Ubuntu repos
--------------------------------------------------------------------------------

See:

- <https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04>
- <https://askubuntu.com/questions/1088662/npm-depends-node-gyp-0-10-9-but-it-is-not-going-to-be-installed>

```
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install nodejs

sudo apt install libssl1.0-dev  # this is a dependency for npm
sudo apt-get install npm
```

Check versions

```
nodejs --version
npm --version
```
