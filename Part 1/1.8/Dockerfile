FROM ubuntu:18.04

WORKDIR /usr/src

COPY script.sh .

RUN chmod +x script.sh

RUN apt-get update

RUN apt-get -y install curl 

CMD ./script.sh
