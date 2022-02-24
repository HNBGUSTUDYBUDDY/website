FROM alpine:latest
RUN apt update -y && /
  apt install apache2 -y && \
  apt install nano -y
RUN ufw allow in "Apache"
RUN apt install mysql-server -Y && \
    mysql_secure_installation
RUN  apt install php libapache2-mod-php php-mysql -Y
RUN apt install php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip -Y
RUN systemctl restart apache2
RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz -y
