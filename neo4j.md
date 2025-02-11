# Install Neo4J

From <https://neo4j.com/docs/operations-manual/current/installation/linux/debian/>

Note that some specific Java version is needed.

Also __I cannot make it work with java downloaded from oracle__.
Instead I need:

    sudo apt install openjdk-17-jdk

and add the JAVA_HOME variable to my .bashrc file

    export JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64



## Add repo

    wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/neotechnology.gpg
    echo 'deb [signed-by=/etc/apt/keyrings/neotechnology.gpg] https://debian.neo4j.com stable latest' | sudo tee -a /etc/apt/sources.list.d/neo4j.list
    sudo apt-get update

### in ubuntu 22.04 I also needed

    sudo add-apt-repository universe
    sudo apt install --reinstall python3-oauthlib

## List versions

    apt list -a neo4j

## Install latest version

    sudo apt-get install neo4j=1:5.26.0
    
    
# Start the service

    sudo systemctl enable neo4j  # Enable Neo4j to Start on Boot
    sudo systemctl start neo4j   # Start Neo4j if It’s Down
    sudo systemctl restart neo4j
    sudo systemctl status neo4j
    # sudo systemctl edit neo4j

# Configuration

    sudo -E emacs /etc/neo4j/neo4j.conf


# Docs

- [Default file locations](https://neo4j.com/docs/operations-manual/current/configuration/file-locations/)
