FROM debian:bullseye


RUN apt -y update && apt install -y nginx && apt install openssl -y

RUN mkdir -p /etc/nginx/certs
RUN openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/certs/keyprivate.key \
    -out /etc/nginx/certs/CSR.csr \
    -subj "/C=US/ST=kheribga/L=kheribga/O=42/CN=mel-jira.42.fr"

COPY /tools/default /etc/nginx/sites/available/

CMD ["nginx", "-g", "daemon off;"]
