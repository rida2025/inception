FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y mariadb-server

COPY /tools/script.sh /

CMD ["./script.sh"]