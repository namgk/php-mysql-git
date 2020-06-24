FROM php:7.4.7-apache

RUN apt-get update -yqq && apt-get install -yqq mariadb-client git
RUN docker-php-ext-install pdo pdo_mysql

COPY php.ini /usr/local/etc/php/php.ini
