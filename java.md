Install Java
============

Go to <http://www.oracle.com/technetwork/java/javase/downloads>
and follow the __JDK__ download link (not the JRE ones)

Accept the _License Agreement_ and download the file: jdk-****-linux-x64.tar.gz

Decompress in the folder `/opt` creating the sub-folder 'jdk-****'

    sudo tar -xvzf jdk-8u11-linux-x64.tar.gz 

Create the __symbolic link__ *: 

    sudo ln -s /opt/jdk-**** /opt/java

Add the /opt/java folder to your path. Use the `/etc/profile` file to do this

    export JAVA_HOME=/opt/java
    export PATH=$JAVA_HOME/bin:$PATH

Thus when you __upgrade__ your java version you just need to rewrite the __symbolic link__ * 

The '$JAVA_HOME' variable is used by some applications, R for instance.

remember to sign in as root when reconfiguring R (you get an error otherwise):

    sudo su -
    R CMD javareconf

See more here https://github.com/biocosas/install_and_config_linux/blob/master/r_and_bioconductor.md#java




Configure Browsers
------------------

For Firefox:

    cd ~/.mozilla
    mkdir plugins
    cd plugins
    ln -s /opt/java/jre/lib/amd64/libnpjp2.so

__Restart__ your browser and test it here: <http://www.java.com/en/download/installed.jsp>

--------------------

Apparently __Chrome__ does not support java ???

See <http://askubuntu.com/questions/470485/java-plugin-issue-on-chrome-browser>


Install certificates in Java
============================

Some aplications may need a security __certificate__ to be installed in Java (probably also in your browser)

To install such certificates run (acordng to the above installation): 

    /opt/java/bin/jcontrol
    
A window will pop up. Then go to: 

    Security > Manage certificates > Import

and import your certificate into Java.





