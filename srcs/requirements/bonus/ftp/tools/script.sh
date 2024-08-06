#!/bin/bash

service vsftpd start

useradd -m $ftp_user

echo "$ftp_user:$ftp_pwd" | /usr/sbin/chpasswd

chown -R $ftp_user /home/$ftp_user

vsftpd /etc/vsftpd.conf