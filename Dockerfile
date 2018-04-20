FROM ubuntu:latest

RUN apt-get update && \
   apt-get install \
   apt-transport-https \
   ca-certificates \
   curl \
   software-properties-common && \
   apt-get clean

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

RUN apt-get update && \
   apt-get install docker-ce && \
   apt-get clean
