
# Wie kann ich Beiträge schreiben?

1. Verändern bestehender Stichworte
    * Suche Dir ein Stichwort, das noch keinen Text hat. Oder dessen Text Du ergänzen/verbessern möchtest.
    * Schreibe den fehlenden Text. Benutze *Markdown*, falls Du es kennst. Andernfalls schreibe einfach normalen Text -- jemand anderes wird das dann nach Markdown konvertieren.
1. Anlegen neuer Stichworte
    * Jedes Stichwort hat seine eigene Markdown-Datei. Die Datei-Endung ist \*.mmd.
    * Benutze keine Umlaute im Dateinamen ('ä', 'ü', 'ö', 'Ä', 'Ü', 'Ö' oder 'ß'). (Innerhalb des Textes kannst Du Umlaute durchaus verwenden.)
    * Benutze keine Umlaute in den *Labels* für die Konstruktion von Links und Verweisen. Die sollen also so aussehen: `(#schluessel-uebergabe)`, nicht `(#schlüssel-übergabe)`.
    * Benutze keine Groß-Buchstaben in den Labels zur Konstruktion von Links und Verweisen. Also so: `(#schluessel-uebergabe)`, nicht so: `(#Schluessel-Uebergabe)`.
   
   Du kannst den Eintrag `Dummy.mmd` als Template verwenden, um ein neues Stichwort anzulegen.

   Du kannst auch das Mini-Skript `create-entry-skeleton.sh` verwenden, um mehrere Stichworte anzulegen:
   
        bash create-entry-skeleton.sh Stichwort-1 Stichwort-2 Stichwort-3




