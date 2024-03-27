#!/bin/bash

echo "Atualizando o Servidor"
echo " ---------------------"

sudo apt-get update
sudo apt-get upgrade -y

echo "Intalando Apache"
echo " ---------------"
sudo apt-get install apache2 -y

echo "Colocar Aplicação no Server"
echo " --------------------------"
sudo git clone https://github.com/VitorRotha/devops
cd devops
sudo cp -R  * /var/www/html/

echo "Exibir IP"
ip a