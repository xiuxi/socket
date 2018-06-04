yum -y install httpd
systemctl start httpd.service
systemctl enable httpd.service
yum -y install mariadb-server mariadb
systemctl start mariadb
mysql_secure_installation
systemctl enable mariadb.service
yum -y install php php-mysql
systemctl restart httpd.service


cd /var/www/html
curl https://raw.githubusercontent.com/xiuxi/socket/master/wordpress.zip --output wordpress.zip
curl https://raw.githubusercontent.com/xiuxi/socket/master/wp-config.php --output wp-config.php
curl https://raw.githubusercontent.com/xiuxi/socket/master/wordpress.sql --output wordpress.sql

mysql -h localhost -u root wordpress < /var/www/html/wordpress.sql
