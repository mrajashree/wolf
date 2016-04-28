FROM ubuntu:14.04

RUN sudo apt-get update

RUN sudo apt-get install -y git

RUN sudo apt-get install -y python2.7
RUN sudo apt-get install -y python-dev
RUN sudo apt-get install -y python-pip

RUN sudo apt-get install -y libxml2-dev
RUN sudo apt-get install -y libxslt1-dev
RUN sudo apt-get install -y zlib1g-dev

RUN sudo apt-get install apt-file
RUN sudo apt-file update
RUN apt-file search add-apt-repository
RUN sudo apt-get install software-properties-common
RUN sudo add-apt-repository ppa:webupd8team/java
RUN sudo apt-get updatesudo apt-get install oracle-java8-installer -y

RUN sudo apt-get install -y maven
COPY . /src

COPY . /src
RUN cd /src;pip install -r requirements.txt

