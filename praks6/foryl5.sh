#!/bin/bash
#For tsükkel, mis kasutab IFS muutujat

loomad="koer;kass;hiir"
IFS=';'

for sona in $loomad; do
	echo "Sõna: $sona"
done
