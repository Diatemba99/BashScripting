#!/bin/bash

#creation of database backup
data=$(sudo mysqldump mysql > sql-$(date +%d-%m-%Y).sql)

#save our database name
filename="sql-$(date +%d-%m-%Y).sql"

#creation of archive 
gzip $filename


ping 192.168.5.51 -c4 > /dev/null

if [ $? -eq 0 ]
then 
	scp $filename.gz mohamed@192.168.5.51:~/Bureau/
	if [ $? -eq 0 ]
	then
		echo "Sauvegarde bien effectuée!"
	fi	
else
	echo "ERREUR"
fi


