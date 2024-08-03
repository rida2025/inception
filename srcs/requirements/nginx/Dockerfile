FROM debian:bullseye


RUN apt -y update && apt install -y nginx && apt install openssl -y

COPY /tools/default /etc/nginx/sites/available/.

CMD ["nginx", "-g", "daemon off;"]
