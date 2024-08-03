#!/bin/bash

mkdir -p /run/php
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
cd /var/www/html

sleep 10

wp core download --allow-root
wp core config --dbhost=mariadb --dbname=$db_name --dbuser=$db_user --dbpass=$db_pwd --allow-root
wp core install --url=$DOMAIN_NAME --title="$WP_TITLE" --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --allow-root
wp user create $WP_USR $WP_EMAIL --user_pass=$WP_PWD --role=$WP_ROLE --allow-root

wp plugin install redis-cache --activate --allow-root
sleep 10
wp config set WP_REDIS_HOST redis --allow-root
wp config set WP_REDIS_PORT 6379 --raw --allow-root
wp redis enable --allow-root

sed -i 's|^listen = /run/php/php7.4-fpm.sock|listen = 9000|' /etc/php/7.4/fpm/pool.d/www.conf
php-fpm7.4 -F