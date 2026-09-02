#!/bin/bash
#Väljastab kasutajale kuupäeva, aja ja kalendri.
echo

kuupaev=$(date +"%A, %B %d, %Y")
echo Today is $kuupaev


kellaaeg=$(date +"Time is %H:%M")
echo $kellaaeg


echo


kalenderKUU=$(date +"Calendar of %B %Y")
echo $kalenderKUU


kalender=$(cal | tail -n 7)
echo "$kalender"
