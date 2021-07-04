sudo yum update -y
sudo yum install -y amazon-linux-extras && amazon-linux-extras install php7.3

sudo yum clean metadata 
sudo yum install php-cli php-pdo php-common php-pear 
sudo yum install php-{cgi,curl,mbstring,gd,mysqlnd,gettext,json,xml,intl,zip}

sudo yum update -y \
    && yum install -y \
        php-fpm \
    && yum clean all \
    && rm -rf /var/chache/yum/*

sudo systemctl restart php-fpm
sudo systemctl restart httpd