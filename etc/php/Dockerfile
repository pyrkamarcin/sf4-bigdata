FROM php:7.1-fpm

RUN apt-get update > /dev/null && apt-get install -y \
    git \
    unzip \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    zlib1g-dev \
    libicu-dev \
    jpegoptim \
    g++ \
    libxrender1 \
    libfontconfig \
    nano > /dev/null \
    && docker-php-ext-install -j$(nproc) iconv mcrypt > /dev/null \
    && docker-php-ext-install intl > /dev/null \
    && docker-php-ext-install exif > /dev/null \
    && docker-php-ext-install zip > /dev/null

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer > /dev/null

RUN docker-php-ext-install pdo pdo_mysql > /dev/null

USER root

RUN usermod -u 1000 www-data
RUN chmod 777 /var/www/html

WORKDIR /var/www/html
