FROM ubuntu:trusty

MAINTAINER Przemysław Grzeszczak "przemyslaw.grzeszczak@gmail.com"

ENV TERMINFO=/opt/share/terminfo TERM=xterm EDITOR=nano

RUN apt-get update
RUN apt-get install -y curl nano build-essential nano

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN \curl -L https://get.rvm.io | bash -s stable

RUN /bin/bash -l -c "echo -e \"\nsource /usr/local/rvm/scripts/rvm\" >> ~/.bashrc"
RUN /bin/bash -l -c "source /usr/local/rvm/scripts/rvm"

RUN /bin/bash -l -c "rvm install jruby-9.0.4.0"

CMD bash
