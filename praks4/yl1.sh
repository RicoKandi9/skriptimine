#!bin/bash
#Tingimuslause ülesanne 1.

read -p "Sisesta suvaline täisarv: " taisarv


if (($taisarv % 2 == 0))
then
	echo Antud arv on paaris.
else
	echo Antud arv on paaritu.
fi
