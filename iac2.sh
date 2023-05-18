#!/bin/bash

echo "
Enunciado:
	- Atualizar o servidor;
	- Instalar o apache2;
	- Instalaro unzip;
	- Baixar a aplicação disponível no endereço https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp;
	- Copiar os arquivos da aplicação no diretório padrão do apache;
"

echo "Atualizando o servidor..."

apt-get update;
apt-get upgrade -y;

echo "Instalando o servidor Apache..."

apt-get install apache2 -y

echo "Instalando o Unzip..."

apt-get install unzip -y

echo "Baixando, descompactando e copiando os arquivos da aplicação web..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cp -R linux-site-dio-main/* /var/www/html

echo "Execução finalizada do script."
