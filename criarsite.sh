#!/bin/bash
site=$1

touch /etc/apache2/sites-available/$site.conf

echo "
<VirtualHost *:80>
	ServerName www.$site.com.br
	DocumentRoot /var/www/$site 
	</VirtualHost> " > /etc/apache2/sites-available/$site.conf
	

a2ensite $site.conf
systemctl restart apache2

mkdir /var/www/$site
touch /var/www/$site/index.html

echo "
<meta charset=\"utf-8\">
<html>
	<head>
	<title> janela1 </title>
	</head>
	<body>
		<center>
		<h1>	<font color=\"#0000FF\">
			Site do Cliente
		</h1>
		</center>
	</body>
</html> " >> /var/www/$site/index.html

