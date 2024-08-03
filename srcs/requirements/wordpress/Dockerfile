FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y php7.3-fpm php-mysql -y && apt install -y curl 


COPY /tools/script.sh /usr/local/bin/

CMD ["./script.sh"]