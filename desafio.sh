#! /bin/bash

#Criando diretorios na pasta raiz
cd /
mkdir publico adm ven sec

#Criando grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#Criando usuarios
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -crypt Senha123) carlos
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -crypt Senha123) maria
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -crypt Senha123) joao
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -crypt Senha123) debora
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -crypt Senha123) sebastiana
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -crypt Senha123) roberto
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -crypt Senha123) josefina
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -crypt Senha123) amanda
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -crypt Senha123) rogerio

#Alterando grupos dos diretorios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#Alterando permissoes de diretorios
chmod -R 777 /publico
chmod -R 770 /adm
chmod -R 770 /ven
chmod -R 770 /sec
