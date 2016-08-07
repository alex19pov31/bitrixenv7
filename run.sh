#!/bin/bash

docker build -t web7 .
docker run -tid \
--name="web7" \
-p 80:80 -p 443:443 \
-v `pwd`/..:/home/www \
-v `pwd`/conf/etc/nginx/conf.d:/etc/nginx/conf.d:ro \
-v `pwd`/conf/etc/mysql/my.cnf:/etc/mysql/my.cnf:ro \
-v `pwd`/conf/usr/local/etc/php/conf.d/custom.ini:/usr/local/etc/php/conf.d/z-custom.ini:ro \
-v `pwd`/conf/usr/local/etc/php-fpm.d:/usr/local/etc/php-fpm.d:ro \
-v `pwd`/db:/var/lib/mysql \
web7