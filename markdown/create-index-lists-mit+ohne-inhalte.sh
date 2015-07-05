for i in ??*.mmd ; do 
    vorhanden=$(grep -L "DEIN Beitrag" "${i}" | sed 's#.mmd##') \
        && echo "[${vorhanden}](#${vorhanden,,}) | " | grep -vE '(\[\]\(#\))' ;  
done >> _02-index.md



for i in ??*.mmd ; do 
    n_vorhanden=$(grep -l "DEIN Beitrag" "${i}" | sed 's#.mmd##') \
        && echo "[${n_vorhanden}](#${n_vorhanden,,}) | " | grep -vE '(\[\]\(#\))' ;  
done >> _03-index.md


