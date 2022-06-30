#!/bin/bash
read -p "Ecrire une valeur comprise entre 0-100" val;

if [ $val -lt 50 ]
then 
	echo "VERT";
elif [ $val  -gt 50 ]  &&  [ $val  -lt 75 ]
then
	echo "ORANGE";
elif  [ $val -lt 75 ]  && [ $val -gt 100 ]
then
	echo "ROUGE";
elif [ $val -lt 0 ] || [ $val -gt 100 ]
then
	echo "ERREUR";
fi;
