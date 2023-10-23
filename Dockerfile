FROM nginx:alpine
FROM php:fpm-alpine
COPY site /usr/share/nginx/html
