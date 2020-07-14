


# Install and config elasticsearch

See:
- <https://www.elastic.co/downloads/elasticsearch>
- <https://www.elastic.co/guide/en/elasticsearch/reference/7.7/deb.html#deb-repo>


## Install dependencies

    sudo apt-get install apt-transport-https


## Install elasticsearch


    wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
    echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
    sudo apt-get update
    sudo apt-get install elasticsearch


## Start and stop

Elasticsearch can be started and stopped as follows:

    sudo systemctl start elasticsearch.service
    sudo systemctl stop  elasticsearch.service

To check status:

    systemctl -t service | grep elastic


To configure Elasticsearch to start automatically when the system boots up, run the following commands:

    sudo /bin/systemctl daemon-reload
    sudo /bin/systemctl enable elasticsearch.service


# Usage

Start the server and access the app at: <http://localhost:9200/>
