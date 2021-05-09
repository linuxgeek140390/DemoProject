#!/usr/bin/env bash

# Install libaries
ls -lrt
cd /var/www/html/
source /home/ubuntu/demo-env/bin/activate
pip3 install -r requirements.txt
python3 manage.py migrate


# Set permission for all files
sudo chown -R www-data:www-data /var/www/

# Restart services
sudo systemctl restart apache2
