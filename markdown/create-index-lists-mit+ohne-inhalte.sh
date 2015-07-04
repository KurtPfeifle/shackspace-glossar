for i in ??*.mmd ; do 
    vorhanden=$(grep -L "DEIN Beitrag" "${i}" | sed 's#.mmd##') \
        && echo "[${vorhanden}](#${vorhanden}) | " | grep -vE '(\[\]\(#\))' ;  
done >> 02-index.md



for i in ??*.mmd ; do 
    vorhanden=$(grep -l "DEIN Beitrag" "${i}" | sed 's#.mmd##') \
        && echo "[${vorhanden}](#${vorhanden}) | " | grep -vE '(\[\]\(#\))' ;  
done >> 03-index.md


