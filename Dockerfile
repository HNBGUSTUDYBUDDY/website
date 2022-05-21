FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y
RUN apt install apache2 -y
RUN apt install nano -y
EXPOSE 80




