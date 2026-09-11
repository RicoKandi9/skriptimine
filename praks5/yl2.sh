#!/bin/bash
# Skript väljastab aastaaja vastavalt kasutaja sisestatud kuu numbrile

read -p "Sisesta kuu number: " kuu

if [ $kuu -eq 1 -o $kuu -eq 2 -o $kuu -eq 12 ]
then
    echo "Praegu on talv"
elif [ $kuu -ge 3 -a $kuu -le 5 ]
then
    echo "Praegu on kevad"
elif [ $kuu -ge 6 -a $kuu -le 8 ]
then
    echo "Praegu on suvi"
elif [ $kuu -ge 9 -a $kuu -le 11 ]
then
    echo "Praegu on sügis"
else
    echo "Vigane kuu number! Sisesta arv 1-12."
fi
