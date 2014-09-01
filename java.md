Install Java
============

Go to <http://www.oracle.com/technetwork/java/javase/downloads>
and follow the __JDK__ download link (not the JRE ones)

Accept the _License Agreement_ and download the file: jdk-****-linux-x64.tar.gz

Uncompress in the folder '/opt' creating the sub-folder 'jdk-****'

    sudo tar -xvzf jdk-8u11-linux-x64.tar.gz 

Create the symbolic link: 

    sudo ln -s /opt/jdk-**** /opt/java

Add the /opt/java folder to your path. Use the `/etc/profile` file to do this

    export JAVA_HOME=/opt/java
    export PATH=$JAVA_HOME/bin:$PATH

Thus when you upgrade your java version you just need to rewrite the symbolic link 

Conviene ademas generar la variable '$JAVA_HOME' ... por ejemplo R la necestia para configurarse con el java.
