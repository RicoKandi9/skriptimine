#!/bin/bash
#Skript küsib kasutaja käest tema vanus ja ütleb vastava vanuse kohta, kas ta on laps, täiskasvanu või seenior


#Küsi kasutaja käest tema vanust
read -p "Sisesta enda anus: " vanus


if [ $vanus -ge 0 -a $vanus -lt 11 ]
then
	echo "oled laps"
elif [ $vanus -ge 11 -a $vanus -lt 18 ]
then
	echo "oled nooruk"
elif [ $vanus -ge 18 -a $vanus -lt 63 ]
then
	echo "oled täiskasvanu"
elif [ $vanus -ge 63 ]
then
	echo "oled senioor"
else
	echo "vigane sisend"
fi
