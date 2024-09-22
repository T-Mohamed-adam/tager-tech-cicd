# Use the official PHP-FPM image as the base image
FROM php:8.3-fpm-alpine

# Set working directory
WORKDIR /var/www/html

# Install necessary packages and PHP extensions
RUN apk update && apk add --no-cache \
    bash \
    git \
    curl \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev \
    icu-dev \
    libzip-dev \
    zlib-dev \
    oniguruma-dev \
    libxml2-dev \
    postgresql-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install -j$(nproc) pdo_mysql mysqli mbstring intl xml zip

# Set Composer process timeout to 1200 seconds (20 minutes)
ENV COMPOSER_PROCESS_TIMEOUT=1200

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copy existing application directory contents
COPY . /var/www/html

# Set permissions for the web server
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 9000 and start php-fpm server
EXPOSE 9000

CMD ["php-fpm"]
