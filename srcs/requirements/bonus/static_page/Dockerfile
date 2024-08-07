FROM debian:bullseye

RUN apt update -y
RUN apt upgrade -y
RUN apt install nginx -y

COPY /conf/default /etc/nginx/sites-available/default
COPY /tools /var/www/html

CMD ["nginx", "-g", "daemon off;"]