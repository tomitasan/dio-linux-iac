#!/bin/bash

echo ===========================================================================
echo -e "\e[1;33m>Atualizando servidor...\e[0m"
echo ===========================================================================

apt-get update && apt-get upgrade -y

echo ===========================================================================
echo -e "\e[1;33m>Instalando Apache...\e[0m"
echo ===========================================================================

apt-get install apache2 -y

echo ===========================================================================
echo -e "\e[1;33m>Instalando Unzip...\e[0m"
echo ===========================================================================

apt-get install unzip -y

echo ===========================================================================
echo -e "\e[1;33m>Baixar app para o server\e[0m"
echo ===========================================================================

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo ===========================================================================
echo -e "\e[1;33m>Copiar arquivos da app para diretorio apache\e[0m"
echo ===========================================================================

unzip main.zip
cd linux-site-dio-main
cp * /var/www/html/ -R
