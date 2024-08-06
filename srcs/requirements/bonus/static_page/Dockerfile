FROM debian:bullseye

COPY /tools/* /var/www/html/
COPY /conf/default /etc/nginx/conf.d/default

CMD ["nginx", "-g", "daemon off;"]
