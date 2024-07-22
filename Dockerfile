FROM ubuntu:latest
WORKDIR /app 
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY . /var/www/html 
ENTRYPOINT apachectl -D FOREGROUND