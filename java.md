Install Java
============

Go to <http://www.oracle.com/technetwork/java/javase/downloads>
and follow the __JDK__ download link (not the JRE ones)

Accept the _License Agreement_ and download the file: jdk-****-linux-x64.tar.gz

Decompress in the folder `/opt` creating the sub-folder 'jdk-****'

    sudo tar -xvzf jdk-8u11-linux-x64.tar.gz 

Create the __symbolic link__^[1]: 

    sudo ln -s /opt/jdk-**** /opt/java

Add the /opt/java folder to your path. Use the `/etc/profile` file to do this

    export JAVA_HOME=/opt/java
    export PATH=$JAVA_HOME/bin:$PATH

Thus when you __upgrade__ your java version you just need to rewrite the symbolic link 

The '$JAVA_HOME' variable is used by some applications, R for instance.


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
