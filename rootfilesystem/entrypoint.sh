#!/usr/bin/env sh

set -ex

cp /usr/local/etc/php/conf.d/docker-php-ext-yasd.ini-suggested /usr/local/etc/php/conf.d/docker-php-ext-yasd.ini
sed -i -E \
  "s/yasd.remote_host=.+$/yasd.remote_host=$(getent hosts host.docker.internal | awk '{print $1}')"/g \
  /usr/local/etc/php/conf.d/docker-php-ext-yasd.ini

php --ri yasd
php -e /var/www/server.php
