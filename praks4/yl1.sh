#!bin/bash
#Tingimuslause ülesanne 1.



#if (($taisarv % 2 == 0))
#then
#	echo Antud arv on paaris.
#else
#	echo Antud arv on paaritu.
#fi



#Täiendan skripti niimoodi, et panen tingimuslause tingimuslause sisse.

#Kontrollin, kas käsurea parameetreid on 1
if [ $# -ne 1 ]
then
	echo "Käivita see skript koos arvuga mille paarsust soovid kontrollida. Näiteks: 6"
else
	if [ $(($1 % 2)) -eq 0 ]
	then
		echo "Antud arv on paaris"
	else
		echo "Antud arv on paaritu"
	fi
fi
