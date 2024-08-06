FROM debian:bullseye

RUN apt update && apt upgrade -y

RUN apt install -y vsftpd

RUN mkdir -p /var/run/vsftpd/

COPY /conf/vsftpd.conf /etc/vsftpd.conf

COPY /tools/script.sh /

CMD ["./script.sh"]