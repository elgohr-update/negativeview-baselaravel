FROM negativeview/basephp:latest

RUN apt-get update && apt-get install -y npm
RUN docker-php-ext-install mysqli pdo pdo_mysql

WORKDIR /app
RUN composer create-project --prefer-dist laravel/laravel app