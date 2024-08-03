FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y mariadb-server

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY init.sql /etc/mysql

RUN mkdir -p /run/mysql

CMD ["mysqld"]