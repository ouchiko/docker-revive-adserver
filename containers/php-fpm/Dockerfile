# -
# Compliant Laravel (as of 5.6) PHP setup.
# (C)HOTELMAP 2018
# -
FROM php:7.2-fpm-alpine3.8

RUN apk add --no-cache --virtual .persistent-deps icu-dev supervisor
RUN apk add --no-cache libxml2 libxml2-dev freetype-dev libjpeg-turbo-dev libpng-dev

# Image Magik Installation - Can remove if not needed.
RUN apk add --update --no-cache autoconf g++ imagemagick imagemagick-dev libtool make pcre-dev \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && apk del autoconf g++ libtool make pcre-dev
    
# GD Image installations - Can remove if  not needed.
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd 


# Requirement for Laravel Installation. (see: https://laravel.com/docs/5.6)
RUN docker-php-ext-install mbstring tokenizer ctype pdo pdo_mysql intl bcmath mysqli zip

WORKDIR /var/www/html
