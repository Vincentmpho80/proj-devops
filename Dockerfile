# getting base image ubuntu
FROM ubuntu

MAINTAINER vincentmpho80@gmail.com

RUN apt-get update

CMD ["echo", "Hello world...! from my docker image"]
