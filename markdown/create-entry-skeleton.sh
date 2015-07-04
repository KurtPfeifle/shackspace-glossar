
 for i in \
     "${@}" ;
     do if [ -f "${i}.mmd" ]; then
         echo "NOT creating    ${i}.mmd    -- it exists already; please check its contents!" ;
     else
         echo "Now creating ${i}.mmd (new keyword entry -- template only, still empty)" ;
         I=$(echo "${i}" | tr "[A-Z]" "[a-z]")
         echo "### ${i} {#${I} .chapter .small .term}" > "${i}.mmd" ;
         echo ""                                      >> "${i}.mmd" ;
         echo 'TO BE DONE... Hier fehlt noch DEIN Beitrag.  Hier fehlt noch DEIN Beitrag. Hier fehlt noch DEIN Beitrag.  Hier fehlt noch DEIN Beitrag. Hier fehlt noch DEIN Beitrag.  Hier fehlt noch DEIN Beitrag. Hier fehlt noch DEIN Beitrag.  Hier fehlt noch DEIN Beitrag.' \
                                                     >> "${i}.mmd"  ;
        echo ""                                      >> "${i}.mmd"  ;
        echo "#### Siehe auch:"                      >> "${i}.mmd"  ;
        echo "[]() | "                               >> "${i}.mmd"  ;
        echo "[]() | "                               >> "${i}.mmd"  ;
        echo "[]() | "                               >> "${i}.mmd"  ;
        echo "[Index](#index) | "                    >> "${i}.mmd"  ;
        echo ""                                      >> "${i}.mmd"  ;
        echo "----"                                  >> "${i}.mmd"  ;
        echo ""                                      >> "${i}.mmd"  ;
    fi
    done


# for z in {0..9}; do
#    echo "Creating ${z}.mmd" ;
#    echo "## ${z} {#x${z} .section .character .big .chargroup}"    > "${z}.mmd" ;
#    echo ""                                                      >> "${z}.mmd"  ;
# done


#for z in {A..Z}; do
#   echo "Creating ${z}.mmd" ;
#   echo "## ${z} {#${z} .section .character .big .chargroup}"    > "${z}.mmd" ;
#   echo ""                                                      >> "${z}.mmd"  ;
#done
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
