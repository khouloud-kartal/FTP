#!/bin/bash


  
#l'installation de proftpd avec ses modules, openssl et filezilla
sudo apt-get install proftpd-*
sudo apt-get install openssl
sudo apt-get install filezilla

#mettre a jour les paquets 

sudo apt update && sudo apt upgrade

#La creation du dossier ssl et generer la clef et le certificat
mkdir /etc/proftpd/ssl
sudo openssl req -x509 -newkey rsa:2048 -keyout /etc/proftpd/ssl/proftpd.key.pem -out /etc/proftpd/ssl/proftpd.cert.pem -nodes -days 365


#Les modifications des fichiers conf : proftpd.conf ; tls.conf et modules.conf
cp /home/khouloud/Documents/modules.conf /etc/proftpd/modules.conf
cp /home/khouloud/Documents/proftpd.conf /etc/proftpd/proftpd.conf
cp /home/khouloud/Documents/tls.conf /etc/proftpd/tls.conf

#La creation des utilisateurs
sudo useradd -m -p merry kalimac
sudo useradd -m -p pippin secondbreakfast

#Enregitrer les modifications
sudo systemctl restart proftpd

filezilla

