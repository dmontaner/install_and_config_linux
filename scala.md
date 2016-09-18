
Remove previous versions if installed `with apt-get`

    sudo apt-get remove scala-library scala

Download the latest __deb__ file from http://www.scala-lang.org/files/archive/ and install with `dpkg`

    wget http://www.scala-lang.org/files/archive/scala-2.11.8.deb
    sudo dpkg -i scala-2.11.8.deb

----

This seems to work too: 

Download the latest version

    http://www.scala-lang.org/download/

the file is a .tgz.

Unzip and add the `bin` directory to your `PATH`
