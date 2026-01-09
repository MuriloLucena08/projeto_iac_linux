#!/bin/bash

echo "Executando tarefa..."

echo "Criando diretórios"

mkdir -p /projeto_iac/public
mkdir -p /projeto_iac/adm
mkdir -p /projeto_iac/ven
mkdir -p  /projeto_iac/sec

echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios"

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123)  -g GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123)  -g GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123)  -g GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123)  -g GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha123)  -g GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 Senha123)  -g GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123)  -g GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123)  -g GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123)  -g GRP_SEC

echo "Criando permissões"

chmod  777  /projeto_iac/public

chown root:GRP_ADM /projeto_iac/adm
chmod 2770 /projeto_iac/adm

chown root:GRP_VEN /projeto_iac/ven
chmod 2770 /projeto_iac/ven

chown root:GRP_SEC /projeto_iac/sec
chmod 2770 /projeto_iac/sec

echo "Tarefa concluida com sucesso"

