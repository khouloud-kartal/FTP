#!/bin/bash


my_csvftp=/home/khouloud/FTP/Job9/ftpusers.csv

 sudo groupadd ftpgroup
          
  while IFS="," read Id Prenom Nom Mdp Role;
  do 
	
	if [ "$Id" -eq "$Id" ] 2>/dev/null;
	then
	    sudo useradd -u $Id -p $Mdp $Prenom
            sudo usermod -aG ftpgroup ${Prenom, ,}          
	    	if [ ${Role:0:5} = "Admin" ];
                then
	    sudo usermod -aG sudo $Prenom
	        fi  	
	fi
 done <$my_csvftp
       
sudo cp /home/khouloud/FTP/Job9/proftpd.conf /etc/proftpd/proftpd.conf
