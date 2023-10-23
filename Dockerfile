# Usa la imagen base de NGINX
FROM nginx:alpine

# Instala PHP y las extensiones necesarias
RUN apk add --update php7 php7-fpm php7-mysqli && rm -rf /var/cache/apk/*

# Copia los archivos de tu sitio al directorio de NGINX
COPY site /usr/share/nginx/html

# Agrega configuraciones para PHP-FPM
COPY php-fpm.conf /etc/php7/php-fpm.conf
COPY www.conf /etc/php7/php-fpm.d/www.conf

# Agrega configuraciones para NGINX para que procese PHP
COPY default.conf /etc/nginx/conf.d/default.conf

# Expone el puerto 80
EXPOSE 80

# Inicia NGINX y PHP-FPM al ejecutar el contenedor
CMD ["sh", "-c", "php-fpm7 && exec nginx -g 'daemon off;'"]
