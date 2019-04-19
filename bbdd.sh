# Step 4: Install MariaDB Database Server

sudo apt-get install mariadb-server mariadb-client -y

# sudo systemctl stop mariadb.service
# sudo systemctl start mariadb.service
# sudo systemctl enable mariadb.service

sudo mysql_secure_installation

sudo systemctl restart mariadb.service

# Step 5: Create WordPress Database

sudo mysql -u root -p

# CREATE DATABASE wpdb;
# CREATE USER 'wpdbuser'@'localhost' IDENTIFIED BY 'new_password_here';
# GRANT ALL ON wpdb.* TO 'wpdbuser'@'localhost' IDENTIFIED BY 'user_password_here' WITH GRANT OPTION;
# GRANT ALL PRIVILEGES ON *.* TO root@'%' IDENTIFIED BY 'password';
# FLUSH PRIVILEGES;
# EXIT;

sudo apt-get install phpmyadmin -y
