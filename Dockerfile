FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y
RUN apt install apache2 -y
RUN apt install nano -y
COPY . /var/www/html
WORKDIR /var/www/html/public
EXPOSE 80




