Install Java
============

Go to <http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html?ssSourceSiteId=otnes>


Accept License Agreement  

Download the file: jdk-****-linux-x64.tar.gz

Uncompress in '/opt/' creating the folder 'jdk-****-linux-x64'

     ln -s /opt/jdk-****-linux-x64/ /opt/java

Add it to your paht (edit /etc/profile file):

    export JAVA_HOME=/opt/java
    export PATH=$JAVA_HOME/bin:$PATH

Thus when you upgrade your java version you just need to rewrite the symbolic link 

Conviene ademas generar la variable '$JAVA_HOME' ... por ejemplo R la necestia para configurarse con el java.
