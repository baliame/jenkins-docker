FROM jenkins

USER root

RUN apt-get update && apt-get install -y make && rm -rf /var/lib/apt/lists/*

