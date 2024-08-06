FROM debian:bullseye


RUN apt -y update && apt install -y nginx

COPY /tools/* /usr/share/nginx/html
COPY /tools/default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
