FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y mariadb-server

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/script.sh /

CMD ["./script.sh"]