#!/bin/bash
#Skript, mis on abiks bussiekskursioonide korraldajatele.

#Vajalik info
read -p "Mitu reisijat on grupis: " reisijate_arv
read -p "Kohtade arv bussis: " kohti_bussis


#Täis busside arv ja maha jäänute inimeste arv
bussid=$(expr $reisijate_arv / $kohti_bussis)
maha_jaanud=$(expr $reisijate_arv % $kohti_bussis)

#Kui on mahajääjaid, siis tuleb suurendada busside arvu ühe võrra
if [ $maha_jaanud -gt 0 ]
then
	bussid=$(($bussid + 1))
fi

#Väljasta tulemused
echo "Kokku on vaja $bussid bussi."
