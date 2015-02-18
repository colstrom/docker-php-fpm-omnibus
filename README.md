php-fpm-omnibus:hardened
========================

A hardened PHP 5.6 with a set of commonly used modules.

Available Tags
--------------
```latest```[Dockerfile](https://github.com/colstrom/docker-php-fpm-omnibus/blob/master/Dockerfile), which builds on [colstrom/php-fpm](https://github.com/colstrom/docker-php-fpm)
```hardened```[Dockerfile](https://github.com/colstrom/docker-php-fpm-omnibus/blob/hardened/Dockerfile), which builds on [colstrom/php-fpm-hardened](https://github.com/colstrom/docker-php-fpm-hardened).

Inherited from php-fpm
----------------------
* Composer
* PEAR
* libsodium
* zeromq
* suhosin

* suhosin (if using the ```hardened``` tag)

Included Extras
---------------
* PHPUnit
* curl
* gd
* mcrypt
* mongo
* mysqlnd
* pgsql
* redis

Preconfigured to listen on ```tcp/9000```.
