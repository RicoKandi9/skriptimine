#!/bin/bash
#For tsükkel, mis loendab 1 kuni 10 ja katkestab break abil seitsme juures


for arv in {1..10}; do
	if [[ $arv -eq 7 ]]; then
		echo "Arvloend jõudis: $arv-ni"
	break
	fi
	echo "Arv: $arv"
done
