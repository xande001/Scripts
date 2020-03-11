#!/bin/bash

dominio=$1

echo "
zone \"$dominio\" {
	type master;
	file \"/etc/bind/db.$dominio\";
};" >> /etc/bind/named.conf.default-zones

cp ./db.alexandre /etc/bind/db.$dominio

ed -i s/localhost/$dominio/g /etc/bind/db.$dominio

systemctl restart bind9


