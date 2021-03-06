FROM ubuntu:trusty

MAINTAINER Przemysław Grzeszczak "przemyslaw.grzeszczak@gmail.com"

ENV TERMINFO=/opt/share/terminfo TERM=xterm EDITOR=nano

RUN apt-get update
RUN \
    apt-get install -y curl nano build-essential software-properties-common && \
    rm -rf /var/lib/apt/lists/*

RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer libxrender1 libxtst6 libxi6 && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN \curl -L https://get.rvm.io | bash -s stable

RUN /bin/bash -l -c "echo -e \"\nsource /usr/local/rvm/scripts/rvm\" >> ~/.bashrc"
RUN /bin/bash -l -c "source /usr/local/rvm/scripts/rvm"

RUN /bin/bash -l -c "rvm install jruby-9.0.4.0"

CMD bash
