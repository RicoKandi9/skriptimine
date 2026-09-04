#!/bin/bash
#Skript, mis on abiks bussiekskursioonide korraldajatele.

#Vajalik info
read -p "Mitu reisijat on grupis: " reisijate_arv
read -p "Kohtade arv bussis: " kohti_bussis


#Täis busside arv ja maha jäänute inimeste arv
tais_bussid=$(expr $reisijate_arv / $kohti_bussis)
maha_jaanud=$(expr $reisijate_arv % $kohti_bussis)


#Väljasta tulemused
echo "Täielikult täidetud busse: $tais_bussid"
echo "Maha jäänud inimesi: $maha_jaanud"
