FROM jenkins

USER root

RUN apt-get update && apt-get install -y make mercurial rubygems-integration ruby python3 && rm -rf /var/lib/apt/lists/*
RUN gem install bundler rake foreman
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
RUN pip install virtualenv

