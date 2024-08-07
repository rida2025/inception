#!/bin/bash

service vsftpd start

adduser $ftp_user --disabled-password

echo "$ftp_user:$ftp_pwd" | /usr/sbin/chpasswd

echo "$ftp_user" | tee -a /etc/vsftpd.userlist 


usermod -aG www-data $ftp_user

sed -i -r "s/#write_enable=YES/write_enable=YES/1"   /etc/vsftpd.conf
sed -i -r "s/#chroot_local_user=YES/chroot_local_user=YES/1"   /etc/vsftpd.conf

echo "
local_enable=YES
allow_writeable_chroot=YES
pasv_enable=YES
local_root=/var/www/html
pasv_min_port=40000
pasv_max_port=40005
userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf

chown -R $ftp_user:www-data /var/www/html
chmod -R 775 /var/www/html

service vsftpd stop

/usr/sbin/vsftpd