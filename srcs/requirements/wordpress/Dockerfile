FROM debian:buster

RUN apt update -y && apt upgrade -y && apt install -y php-fpm php-mysql -y && apt install curl -y

COPY /tools/script.sh /usr/local/bin/

CMD ["./script.sh"]