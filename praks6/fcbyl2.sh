#!/bin/bash
#Kasutaja kirjutab numbreid nii kaua, kuni see on 0. Kui kjrjutab negatiivse arvu, siis jätab continue abil sammu vahele


for (( ; ; )); do
	read -p "Sisesta salajane number: " number

	if [[ $number == -0 ]]; then
                echo "Jätame selle arvu lihtsalt vahele"
                continue
        fi
	if [[ $number -gt 0 ]]; then
		echo "Vale number, proovi uuesti!"
	fi
	if [[ $number -lt 0 ]]; then
		echo "Jätame selle arvu lihtsalt vahele"
		continue
	fi
	if [[ $number -eq 0 ]]; then
		echo "Leidsid salajase numbri!!!"
		break
	fi
done
