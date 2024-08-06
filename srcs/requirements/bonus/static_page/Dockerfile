FROM debian:bullseye


RUN apt -y update && apt install -y nginx && apt install openssl -y

COPY /tools/* /var/www/html/
COPY /tools/default /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]
