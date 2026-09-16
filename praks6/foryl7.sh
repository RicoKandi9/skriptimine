#!/bin/bash
#For tsükkel ,mis väljastab arvud 1-20 ainult paarisarvudena.


for (( arv=2; arv<=20; arv+=2 )); do
	echo "Paarisarv: $arv"
done
