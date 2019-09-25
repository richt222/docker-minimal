FROM php:7.2.1-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
	&& pecl install mcrypt-1.0.2 \
    && docker-php-ext-enable mcrypt \ 
    && docker-php-ext-enable imagick \
    && docker-php-ext-install pdo_mysql