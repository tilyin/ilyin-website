# syntax=docker/dockerfile:1
FROM nginx:1.20
LABEL "MAINTAINER"="Tim Iliyn tilyin@gamil.com"
RUN apt update && apt upgrade -y && apt autoremove -y
COPY html/ /usr/share/nginx/html/
COPY nginx/www-ilyin-website.conf /etc/nginx/conf.d/
EXPOSE 3000/tcp