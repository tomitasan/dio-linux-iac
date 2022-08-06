#!/bin/bash

echo ===========================================================================
echo -e "\e[1;33m>Criando diretórios...\e[0m"
echo ===========================================================================

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo ===========================================================================
echo -e "\e[1;33m>Criando grupos de usuários...\e[0m"
echo ===========================================================================

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo ===========================================================================
echo -e "\e[1;33m>Criando usuários...\e[0m"
echo ===========================================================================

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo ===========================================================================
echo -e "\e[1;33m>Aplicando permissões nos diretórios....\e[0m"
echo ===========================================================================

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo ===========================================================================
echo -e "\e[1;33m>Fim do script\e[0m"
echo ===========================================================================
