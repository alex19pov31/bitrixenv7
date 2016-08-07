#!/bin/bash

php-fpm &
memcached -u nginx -t 8 -s /tmp/memcached.sock -a 00755 &
service mysql start
service nginx start
/bin/bash