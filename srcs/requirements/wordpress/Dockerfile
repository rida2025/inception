FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y php7.4-fpm php-mysql -y && apt install -y curl 

COPY /tools/script.sh /

RUN service php7.4-fpm start

CMD ["./script.sh"]
