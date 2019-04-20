# Step 1: Install Apache2 HTTP Server
sudo apt install apache2 -y

# sudo systemctl stop apache2.service
# sudo systemctl start apache2.service
# sudo systemctl enable apache2.service

# Step 2: Install PHP 7.1 and Related Modules

sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update -y

sudo apt install php7.1 libapache2-mod-php7.1 php7.1-common php7.1-mbstring php7.1-xmlrpc php7.1-gd php7.1-xml php7.1-mysql php7.1-cli php7.1-mcrypt php7.1-zip php7.1-curl -y

# Step 3: Download WordPress Latest Release

# sudo nano index.php
# <?php phpinfo(); ?>

cd /var/www/html/
sudo rm *
sudo wget http://wordpress.org/latest.tar.gz
sudo tar xzf latest.tar.gz
sudo mv wordpress/* .
sudo chown -R www-data: .

sudo apt-get update -y

sudo apt-get install software-properties-common -y
sudo add-apt-repository universe -y
sudo add-apt-repository ppa:certbot/certbot -y
sudo apt-get update -y
sudo apt-get install certbot python-certbot-apache -y

sudo certbot --apache
