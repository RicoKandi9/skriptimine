#!/bin/bash
#pesastatud tsüklite katkestamine break 2 käsuga

for valine in {1..3}; do
	echo "Välimine tsükkel, samm: $valine"

	for sisemine in {1..10}; do
		echo "Sisemine tsükkel, samm: $sisemine"
		if [[ $sisemine -eq 5 ]]; then
			echo "Sisemine tsükkel jõudis sammuni 5. Katkestame mõlemad tsüklid"
			break 2
		fi
	done
done

echo "Mõlemad tsüklid on lõppenud"
