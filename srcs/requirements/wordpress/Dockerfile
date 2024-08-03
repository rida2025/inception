FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y php-fpm php-mysql -y && apt install -y curl 

CMD ["/tools/script.sh"]
