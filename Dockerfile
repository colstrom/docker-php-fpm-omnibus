FROM colstrom/php-fpm

MAINTAINER chris@olstrom.com

USER root
RUN apt-get update
    && apt-get -y install \
      php5-curl \
      php5-gd \
      php5-mcrypt \
      php5-mongo \
      php5-mysqlnd \
      php5-pgsql \
      php5-redis

# Install PHPUnit
ADD https://phar.phpunit.de/phpunit.phar /tmp/phpunit.phar
ADD https://phar.phpunit.de/phpunit.phar.asc /tmp/phpunit.phar.asc
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys 0x4aa394086372c20a \
    && gpg /tmp/phpunit.phar.asc \
    && mv /tmp/phpunit.phar /usr/local/bin/phpunit \
    && chmod 755 /usr/local/bin/phpunit

USER www-data
EXPOSE 9000

ENTRYPOINT ["php5-fpm", "--nodaemonize", "-d", "listen=9000"]
