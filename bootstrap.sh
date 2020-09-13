apt update
apt install apache2 -y
apt install mysql-server -y
apt install php libapache2-mod-php php-opcache php-cli php-gd php-curl php-mysql -y
systemctl restart apache2
