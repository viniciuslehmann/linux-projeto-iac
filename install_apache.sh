#! /bin/bash

echo "Atualizando sistema..."
apt udpate -y
apt upgrade -y
echo "Atualização finalizada!"

echo "Instalando servidor web Apache2..."
apt install apache2 -y
echo "Instalação concluída!"

echo "Habilitando o serviço Apache2"
systemctl enable apache2
systemctl restart apache2

echo "Instalando Unzip..."
apt install unzip -y

echo "Baixando e instalando aplicação web..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Script concluído =D"
