#!/bin/bash

# Loome ajutise faili genereeritud numbrite hoidmiseks
ajutine_fail=$(mktemp)

# Puhastame ajutise faili skripti lõpetamisel (ka katestamise korral)
trap 'rm -f "$ajutine_fail"' EXIT

genereritud=0

# Genereerime täpselt 5 erinevat numbrit
while [ $genereritud -lt 5 ]; do
    # Suvaline arv vahemikus 1–50
    nr=$(( RANDOM % 50 + 1 ))

    # Kontrollime, kas number on juba ajutises failis olemas
    if ! grep -qx "$nr" "$ajutine_fail"; then
        echo "$nr" >> "$ajutine_fail"
        genereritud=$(( genereritud + 1 ))
    fi
done

# Sorteerime numbrid ja koondame ühele reale (eraldatud tühikuga)
numbrid=$(sort -n "$ajutine_fail" | tr '\n' ' ' | xargs)

# Hankime praeguse kuupäeva ja kellaaja
aeg=$(date "+%Y-%m-%d %H:%M:%S")

tulemus="[$aeg] Lotonumbrid: $numbrid"

# Küsime kasutajalt valikut
echo "Vali tegevus:"
echo "1) Kuva tulemus terminalis"
echo "2) Salvesta tulemus faili (lotonumbrid.txt)"
read -p "Siseta valik (1 või 2): " valik

case $valik in
    1)
        echo "$tulemus"
        ;;
    2)
        echo "$tulemus" >> lotonumbrid.txt
        echo "Tulemus salvestatud faili lotonumbrid.txt"
        ;;
    *)
        echo "Tundmatu valik. Kuvan tulemuse terminalis:"
        echo "$tulemus"
        ;;
esac
