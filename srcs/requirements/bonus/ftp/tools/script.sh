#!/bin/bash

service vsftpd start

useradd -m youchen

echo "$ftp_user:$ftp_pwd" | /usr/sbin/chpasswd

chown -R mel-jira /home/mel-jira

vsftpd /etc/vsftpd.conf