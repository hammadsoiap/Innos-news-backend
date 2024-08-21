FROM php:8.2
RUN apt-get update -y && apt-get install -y openssl zip unzip git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apt-get update && apt-get install -y \
    libpq-dev \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*
    
RUN docker-php-ext-install \
    pdo \
    pdo_mysql \
    mysqli \
    pdo_pgsql \
    pdo_sqlite \
    pgsql

WORKDIR /app
COPY . /app
# COPY composer.json composer.lock artisan /app/
# COPY --from=composer /usr/bin/composer /usr/bin/composer
# RUN composer install

CMD  composer install && php artisan serve --host=0.0.0.0 --port=8081
EXPOSE 8081