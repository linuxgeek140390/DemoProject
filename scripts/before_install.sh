#!/usr/bin/env bash

pwd
ls -lrt
cd /home/ubuntu/
sudo apt-get update -y 
sudo apt-get install python3-pip apache2 libapache2-mod-wsgi-py3 -y 
sudo apt install apache2 -y 
sudo systemctl start  apache2
sudo systemctl enable apache2
sudo apt install python3-pip
sudo apt install python3-venv -y
python3 -m venv demo-env
source demo-env/bin/activate
pip3 install django
