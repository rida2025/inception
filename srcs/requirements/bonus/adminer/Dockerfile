FROM debian:bullseye

RUN apt update && apt upgrade -y

RUN apt install wget php php-mysql -y

COPY /tools/script.sh /

ENTRYPOINT ["./script.sh"]