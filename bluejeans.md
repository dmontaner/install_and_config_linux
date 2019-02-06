

Download `bluejeans-1.37.22.x86_64.rpm` from the bluejeans website.

Install alien to convert `rpm` files:

    sudo apt-get install alien

Then:

    sudo alien bluejeans-1.37.22.x86_64.rpm 
    sudo dpkg -i bluejeans_1.37.22-2_amd64.deb 
    sudo apt-get install -f

And then fix link:

    cd /lib/x86_64-linux-gnu/
    sudo ln -s libudev.so.1.6.9 libudev.so.0

NOTE: `1.6.9` may not be the latest version... 
find the latest version in dir `/lib/x86_64-linux-gnu/`
before creating the link.

And start the application:

    /opt/bluejeans/bluejeans-bin


See:
<https://medium.com/@ijeyanthan/howto-install-bluejeans-app-on-ubuntu-e719edbc65f1>

