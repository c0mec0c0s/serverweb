# Step 4: Install MariaDB Database Server

sudo apt-get install mariadb-server mariadb-client -y

# sudo systemctl stop mariadb.service
# sudo systemctl start mariadb.service
# sudo systemctl enable mariadb.service

sudo mysql_secure_installation

sudo systemctl restart mariadb.service

# Step 5: Create WordPress Database


echo "CREATE DATABASE wpdb;"
echo "CREATE USER 'wpdbuser'@'localhost' IDENTIFIED BY 'Il0vemac.';"
echo "GRANT ALL ON wpdb.* TO 'wpdbuser'@'localhost' IDENTIFIED BY 'Il0vemac.' WITH GRANT OPTION;"
echo "GRANT ALL PRIVILEGES ON *.* TO root@'%' IDENTIFIED BY 'Il0vemac.';"
echo "GRANT ALL PRIVILEGES ON *.* TO wpdbuser@'%' IDENTIFIED BY 'Il0vemac.';"
echo "EL SIGUIENTE DA PERMISOS A wpdbuser EN TODAS LAS TABLAS"
echo "GRANT ALL ON *.* TO wpdbuser@localhost IDENTIFIED BY "Il0vemac." WITH GRANT OPTION;"
ECHO ""
echo "FLUSH PRIVILEGES;"
echo "EXIT;"

sudo mysql -u root -p

sudo apt-get install phpmyadmin -y
