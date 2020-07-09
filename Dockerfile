FROM php:7.4.7-apache

RUN docker-php-ext-install pdo pdo_mysql

COPY php.ini /usr/local/etc/php/php.ini

RUN a2enmod rewrite
RUN a2enmod ssl
RUN service apache2 restart

RUN apt-get update && apt-get install 
