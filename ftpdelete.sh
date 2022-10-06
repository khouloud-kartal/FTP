#!/bin/bash

#desinstaller proftpd et ses packages dependants
#supprimer les fichiers de configurations
sudo apt-get autoremove --purge proftpd-*
sudo apt-get autoremove --purge openssl
sudo apt-get autoremove --purge filezilla


