FROM jenkins

USER root

RUN apt-get update && apt-get install -y make mercurial openjdk-7-jre-headless && rm -rf /var/lib/apt/lists/*
RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.4.deb && dpkg -i elasticsearch-1.4.4.deb && service elasticsearch start

