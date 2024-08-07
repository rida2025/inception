FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install nginx -y

COPY /tools/default /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]