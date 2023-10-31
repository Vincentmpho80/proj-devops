# getting base image ubuntu
FROM ubuntu

MAINTAINER vincentmpho80@gmail.com

RUN apt-get update

CMD ["echo", "Hello people...! from my docker image"]
