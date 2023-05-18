FROM php:7.3.15-apache

RUN apt update
RUN apt install -y libpng-dev
RUN docker-php-ext-install mbstring gd

COPY php /var/www/html/php
COPY data /var/www/html/data
COPY image /var/www/html/image

RUN a2enmod rewrite