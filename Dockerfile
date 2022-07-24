FROM php:8.0.2-apache
RUN apt-get update -y
RUN apt install nano -y

COPY . /var/www/html/
RUN chmod 777 /var/www/html
WORKDIR /var/www/html/
EXPOSE 80






