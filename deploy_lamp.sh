#!/bin/bash

# Update package lists
sudo apt update

# Install necessary packages (if not already installed)
sudo apt install -y apache2 mysql-server php libapache2-mod-php php-mysql git

# Clone PHP application from GitHub (if not already cloned)
if [ ! -d "/var/www/html/laravel" ]; then
    sudo git clone https://github.com/laravel/laravel.git /var/www/html/laravel
fi

# Set permissions for Laravel application
sudo chown -R www-data:www-data /var/www/html/laravel
sudo chmod -R 755 /var/www/html/laravel

# Configure Apache virtual host for Laravel application
sudo cp /var/www/html/laravel/.env.example /var/www/html/laravel/.env
sudo sed -i 's/DB_DATABASE=.*/DB_DATABASE=exam_files/g' /var/www/html/laravel/.env
sudo sed -i 's/DB_USERNAME=.*/DB_USERNAME=Slave9180/g' /var/www/html/laravel/.env
sudo sed -i 's/DB_PASSWORD=.*/DB_PASSWORD=vagrant/g' /var/www/html/laravel/.env

sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/laravel.conf
sudo sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/html\/laravel\/public/g' /etc/apache2/sites-available/laravel.conf
sudo a2ensite laravel.conf
sudo systemctl reload apache2

# Add cron job to check server uptime every day at 12 am
echo "0 0 * * * root /usr/bin/uptime >> /var/log/uptime.log" | sudo tee -a /etc/crontab
