FROM debian:bullseye


RUN apt -y update && apt install -y nginx

COPY /tools/* /usr/share/nginx/html
COPY /conf/default /etc/nginx/conf.d/default

CMD ["nginx", "-g", "daemon off;"]
