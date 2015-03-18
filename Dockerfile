FROM jenkins:1.554.3

USER root

RUN apt-get update && apt-get install -y make && rm -rf /var/lib/apt/lists/*

