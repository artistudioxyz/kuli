FROM php:8.3-fpm

WORKDIR /app

RUN apt-get update && apt-get install -y \
        apt-utils \
        git \
        jq \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmemcached-dev \
        libpng-dev \
        gnupg \
        build-essential \
        zip unzip \
        zlib1g-dev \
        nodejs \
        npm

# update npm to last version
RUN npm i -g npm

# install pnpm via npm
RUN npm install -g pnpm

# composer
RUN curl -o /tmp/composer-setup.php https://getcomposer.org/installer \
  && curl -o /tmp/composer-setup.sig https://composer.github.io/installer.sig \
  && php -r "if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) !== trim(file_get_contents('/tmp/composer-setup.sig'))) { unlink('/tmp/composer-setup.php'); echo 'Invalid installer' . PHP_EOL; exit(1); }" \
  && php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer --snapshot \
  && rm -f /tmp/composer-setup.*

# Install PHPCS globally
RUN composer global require "squizlabs/php_codesniffer=*"

# Install WPCS globally
RUN composer global config allow-plugins.dealerdirect/phpcodesniffer-composer-installer true
RUN composer global require --dev wp-coding-standards/wpcs:"^3.0"