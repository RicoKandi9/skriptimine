#!/bin/bash
# Skript tervitab kasutajat vastavalt sisestatud kellaajale (tundides)

aeg= $(date +%H)
kasutaja=$USER

read -p "Sisesta aja väärtus: " aeg

if [ $aeg -ge 6 -a $aeg -lt 12 ]; then
    echo "Tere hommikust, $kasutaja !"
elif [ $aeg -ge 12 -a $aeg -lt 18 ]; then
    echo "Tere päevast, $kasutaja !"
elif [ $aeg -ge 18 -a $aeg -lt 22 ]; then
    echo "Tere õhtust, $kasutaja !"
elif [ $aeg -ge 22 -a $aeg -lt 24 ] || [ $aeg -ge 0 -a $aeg -lt 6 ]; then
    echo "Head ööd, $kasutaja !"
else
    echo "Vigane kellaaeg! Sisesta tund vahemikus 0-23."
fi
