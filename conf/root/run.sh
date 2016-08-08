#!/bin/bash

php-fpm &
mysqld &
memcached -u nginx -t 8 -s /tmp/memcached.sock -a 00755 &
service nginx start
/bin/bash