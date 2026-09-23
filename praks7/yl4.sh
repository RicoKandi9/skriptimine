#!/bin/bash

# 1. Kontrollime, et sisestatud oleks täpselt 3 argumenti
if [ $# -ne 3 ]; then
    echo "Kasutamine: $0 A B C"
    exit 1
fi

A=$1
B=$2
C=$3

# 2. Kontrollime, et A ei oleks 0 (võrdlus bc abil, et toetada ka komakohaga kordajaid)
if [ $(echo "$A == 0" | bc -l) -eq 1 ]; then
    echo "Viga: Kordaja A ei tohi olla 0 (see ei ole ruutvõrrand)."
    exit 1
fi

# 3. Arvutame diskriminandi: D = B^2 - 4AC
D=$(echo "$B * $B - 4 * $A * $C" | bc -l)

# 4. Kontrollime lahendite olemasolu vastavalt diskriminandile

# D < 0 -> Reaalarvulisi lahendeid ei ole
if [ $(echo "$D < 0" | bc -l) -eq 1 ]; then
    echo "Reaalarvulisi lahendeid ei ole."

# D == 0 -> Üks lahend: x = -B / (2A)
elif [ $(echo "$D == 0" | bc -l) -eq 1 ]; then
    x=$(echo "-1 * $B / (2 * $A)" | bc -l)
    printf "Võrrandil on üks lahend: x = %.5f\n" "$x"

# D > 0 -> Kaks lahendit: x1, x2 = (-B ± sqrt(D)) / (2A)
else
    x1=$(echo "(-1 * $B + sqrt($D)) / (2 * $A)" | bc -l)
    x2=$(echo "(-1 * $B - sqrt($D)) / (2 * $A)" | bc -l)

    printf "x1 = %.5f\n" "$x1"
    printf "x2 = %.5f\n" "$x2"
fi

