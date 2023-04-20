Install Java
============

Download the right file from <http://www.oracle.com/technetwork/java/javase/downloads>

    wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.tar.gz
    tar -xvzf jdk-17_linux-x64_bin.tar.gz

    jdk-17.0.6/bin/java -version  # test

    sudo mv jdk-17.0.6/ /opt
    sudo chown -R root.root /opt/jdk-17.0.6
    sudo ln -s /opt/jdk-17.0.6/ /opt/java

Add the /opt/java folder to your path. Use the `/etc/profile` or .etc `.bashrc` file to do this

    export JAVA_HOME=/opt/java
    export PATH=$JAVA_HOME/bin:$PATH

Thus when you __upgrade__ your java version you just need to rewrite the __symbolic link__ * 

The '$JAVA_HOME' variable is used by some applications, R for instance.

--------------------------------------------------------------------------------

I CAN NEVER IN INSTALL IT FROM dev FILES. DO NOT BOTHER FOR THE NEXT TIME
MOREOVER YOU DO NOT KNOW IF ANY OTHER TOOL DEPENDS ON ANY JAVA VERSION ALREADY SET UP SO DO NOT MES IT UP

Download `.dev` file from <https://www.oracle.com/java/technologies/downloads/>

    sudo apt-get install libc6-i386 libc6-x32  # dependencies

    wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.deb
    sudo dpkg -i jdk-17_linux-x64_bin.deb

# R

__Remember to sign in as root when reconfiguring R (you get an error otherwise):__

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

Some applications may need a security __certificate__ to be installed in Java (probably also in your browser)

To install such certificates run (according to the above installation): 

    /opt/java/bin/jcontrol
    
A window will pop up. Then go to: 

    Security > Manage certificates > Import

and import your certificate into Java.





