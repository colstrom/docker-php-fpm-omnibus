FROM colstrom/php-fpm

MAINTAINER chris@olstrom.com

RUN apt-get -y install \
    php5-curl \
    php5-gd \
    php5-mcrypt \
    php5-mongo \
    php5-mysqlnd \
    php5-pgsql \
    php5-redis

EXPOSE 9000

CMD ["php5-fpm", "--nodaemonize", "-d", "listen=9000"]
