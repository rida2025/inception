#!/bin/bash

service mariadb start

sleep 5 

mariadb -e "CREATE DATABASE IF NOT EXISTS $db1_name;"

mariadb -e "CREATE USER IF NOT EXISTS $db1_user@'%' IDENTIFIED BY '$db1_pwd';"

mariadb -e "GRANT ALL PRIVILEGES ON $db1_name.* TO $db1_user@'%';"

service mariadb stop

mysqld_safe --bind-address=0.0.0.0