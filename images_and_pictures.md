
[exif](http://manpages.ubuntu.com/manpages/trusty/man1/exif.1.html) to extract meta information from a picture 

    sudo apt-get install exif

Usage 

    exif picture.jpg


# Reduce image sizes:

From <https://askubuntu.com/questions/818593/how-can-i-change-a-pictures-file-size>

    sudo apt install jpegoptim

Usage

    jpegoptim --size=512k /path/to/image.jpg
    jpegoptim --size=512k *
    jpegoptim --size=512k */*
