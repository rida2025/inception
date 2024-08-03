FROM debian:buster

RUN apt update -y && apt upgrade -y && apt install -y mariadb-server

CMD ["systemctl start mariadb", "mysql_safe"]