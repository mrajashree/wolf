FROM ubuntu:14.04

RUN sudo apt-get update

RUN sudo apt-get install -y git

RUN sudo apt-get install -y python2.7
RUN sudo apt-get install -y python-dev
RUN sudo apt-get install -y python-pip

RUN sudo apt-get install -y libxml2-dev
RUN sudo apt-get install -y libxslt1-dev
RUN sudo apt-get install -y zlib1g-dev

COPY . /src
RUN cd /src;pip install -r requirements.txt

