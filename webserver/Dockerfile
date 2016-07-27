FROM php:5.4-apache

MAINTAINER haiwei long "haiwei.free@gmail.com"

COPY /sources.list /etc/apt/sources.list

# COPY apache/sites-enabled/* /etc/apache2/sites-enabled/

RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev imagemagick libfreetype6-dev\
    && docker-php-ext-configure gd --with-png-dir --with-jpeg-dir --with-freetype-dir\ 
    && docker-php-ext-install mysql mysqli mbstring pdo_mysql gd
    
RUN pecl install ZendOpcache-7.0.5
RUN docker-php-ext-enable opcache

RUN pecl install redis-2.2.7
RUN docker-php-ext-enable redis

RUN apt-get install -y libmcrypt-dev\
    && docker-php-ext-install mcrypt
    
RUN a2enmod rewrite

# WORKDIR /etc/apache2/sites-enabled

CMD ["apache2-foreground"]