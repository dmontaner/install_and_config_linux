
Remove previous versions if installed `with apt-get`

    sudo apt-get remove scala-library scala

Download the latest __deb__ file from http://www.scala-lang.org/files/archive/ and install with `dpkg`

    wget http://www.scala-lang.org/files/archive/scala-2.11.8.deb
    sudo dpkg -i scala-2.11.8.deb

Sometimes I get some errors like:
```
dpkg: dependency problems prevent configuration of scala:
 scala depends on java6-runtime-headless; however:
  Package java6-runtime-headless is not installed.
```

I run 

    sudo apt-get -f install

and then

        sudo dpkg -i scala-2.11.8.deb

seems to wokr.

See [here](http://askubuntu.com/questions/58378/what-exactly-does-sudo-apt-get-f-install-do)

----

This seems to work too: 

Download the latest version

    http://www.scala-lang.org/download/

the file is a .tgz.

Unzip and add the `bin` directory to your `PATH`
