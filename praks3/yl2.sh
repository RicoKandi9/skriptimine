#!/bin/bash
#Skript, mis on abiks kokkadele küpsisetordi valmistamiseks.


#Küsi kasutajalt vajalik info.
read -p "Kandiku pikkus ja laius (cm): " pikkus laius
read -p "Ühe küpsise pikkus ja laius (cm): " pikkus_kupsis laius_kupsis
read -p "Tordi kihtide arv: " kihtide_arv
read -p "Küpsiste arv ühes pakis: " kupsiseid_pakis


#Arvuta küpsiste arv ühes kihis.
kupsiseid_pikkupidi=$(expr $pikkus / $pikkus_kupsis)
kupsiseid_laiuspidi=$(expr $laius / $laius_kupsis)
kupsiseid_uhes_kihis=$(expr $kupsiseid_pikkupidi \* $kupsiseid_laiuspidi)

#Arvuta küpsiste koguarv.
kupsiste_koguarv=$(expr $kupsiseid_uhes_kihis \* $kihtide_arv)


#Arvuta vajalik pakkide arv.
pakkide_arv=$(expr \( $kupsiste_koguarv + $kupsiseid_pakis - 1 \) / $kupsiseid_pakis)

echo "Sul läheb vaja nii palju küpsisepakke: $pakkide_arv"
