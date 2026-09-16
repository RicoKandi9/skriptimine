#!/bin/bash
#For tsükkel, mis väljastab kõik kasutajanimed /etc/passwd

for kasutaja in $(cut -d: -f1 /etc/passwd); do
	echo "Kasutaja: $kasutaja"
done
