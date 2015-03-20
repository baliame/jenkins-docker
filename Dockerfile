FROM jenkins

USER root

RUN apt-get update && apt-get install -y make mercurial rubygems-integration ruby python3 && rm -rf /var/lib/apt/lists/*
RUN gem install bundler rake foreman
ADD https://bootstrap.pypa.io/get-pip.py /tmp
RUN python3 /tmp/get-pip.py
RUN pip install virtualenv

