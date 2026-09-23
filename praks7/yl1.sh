#!/bin/bash

# Läbime kõik arvud vahemikus 1000 kuni 9999
for (( algne_arv=1000; algne_arv<=9999; algne_arv++ )); do
	arv=$algne_arv

      # Kordame numbrite liitmist seni, kuni tulemus on suurem kui 9
	while [ $arv -gt 9 ]; do
		summa=0
        	temp=$arv

	# Eraldame ja liidame käesoleva arvu numbrid arvutuslikult
        while [ $temp -gt 0 ]; do
        	viimane_number=$(( temp % 10 ))
        	summa=$(( summa + viimane_number ))
        	temp=$(( temp / 10 ))
        done

        arv=$summa
done

    	# Kui ühekohalise tulemuse väärtus on 7, väljastame algse arvu
    	if [ $arv -eq 7 ]; then
        	echo $algne_arv
    	fi
done
