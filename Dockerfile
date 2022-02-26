FROM alpine:latest
RUN apt update -y && /
  apt install apache2 -y && \
  apt install nano -y
EXPOSE 80