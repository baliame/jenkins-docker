FROM jenkins

USER root

RUN apt-get update -y && apt-get install --no-install-recommends -y -q make mercurial rubygems-integration ruby python3 curl build-essential ca-certificates git mercurial bzr wget && rm -rf /var/lib/apt/lists/*

# Install Python.
RUN gem install bundler rake foreman
ADD https://bootstrap.pypa.io/get-pip.py /tmp/
RUN python3 /tmp/get-pip.py
RUN pip install virtualenv

# Install Golang.
RUN mkdir /goroot && curl https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz | tar xvzf - -C /goroot --strip-components=1
RUN mkdir /gopath

# Install Docker.
ADD https://get.docker.com/ /tmp/install-docker.sh
RUN sh /tmp/install-docker.sh

ENV GOROOT /goroot
ENV GOPATH /gopath
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

