FROM nginx:alpine
FROM php:latest
WORKDIR /var/www/html
EXPOSE 80
COPY site /usr/share/nginx/html
