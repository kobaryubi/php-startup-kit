FROM php:8.3-apache
RUN apt-get update && apt-get install -y git unzip
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN composer install
